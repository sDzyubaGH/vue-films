// import { pgClient } from "../pgClient.js";
// import { getUsersSql } from "../utils/queries.js";

// class UserController {
//   async get(req, res, next) {
//     try {
//       const users = await pgClient.query(getUsersSql);
//       return res.status(200).json(users.rows);
//     } catch (error) {
//       next(error);
//     }
//   }
// }

// export default new UserController();
