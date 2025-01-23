from dao.user_dao import UserDAO
from models.user import User

class UserService:
    @staticmethod
    def create_user(user_data):
        user = User(**user_data)
        UserDAO.add_user(user)
        return user
