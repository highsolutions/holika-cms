'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  async send(ctx) {
    let error = false;

    if (!ctx.request.body.email || !ctx.request.body.message) {
      error = true;
    }

    if (error == false) {
      await strapi.plugins['email'].services.email.send({
        to: process.env.EMAIL_ADDRESS_FROM,
        from: ctx.request.body.email,
        replyTo: ctx.request.body.email,
        subject: 'Wiadomość z formularza kontaktowego',
        html: "<p>" + ctx.request.body.message + "</p><br>" +
          "<p><b>Imię i nazwisko:</b> " + ctx.request.body.fullName + "</p>" +
          "<p><b>Telefon:</b> " + ctx.request.body.tel + "</p>" +
          "<p><b>Nazwa firmy:</b> " + ctx.request.body.companyName + "</p>",
      });

      return {
        statusCode: 200,
        message: 'ok'
      };
    }
     else {
      return ctx.response.badRequest('Missing required fields');
    }
  }
};
