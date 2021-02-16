<h1 align="center">
  Holika Holika
</h1>

## Installations

### Test
* WEB: https://cms-holika.hslive.eu

## 🧐 Technologies

* Strapi >= 3.4.6
* MySQL >= 5.7
* Yarn >= 1.22.5
* Node >= 14.15.5

## 🛠 Installation

1. Clone repository from origin

   ```sh
    git init
    git remote add origin git@github.com:{user}/{repo}.git
    git pull origin {branch}
   ```

2. Install dependencies

   ```sh
    yarn install
   ``` 
  3. Import `holika_cms.sql` to your database
4. Copy `.env.example` to `.env` and set databse properties
5. Start the development server

   ```sh
    yarn develop
   ```

## 🚀 Building and Running for Production

1. Generate a full static production build

   ```sh
    NODE_ENV=production yarn build
   ```
   or
2. Set server properties (`HOST` & `PORT`) in `.env` file as desired 

3. Preview the site as it will appear once deployed

   ```sh
    NODE_ENV=production yarn start
   ```
