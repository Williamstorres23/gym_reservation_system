class UserDAO:
    users = []

    @classmethod
    def add_user(cls, user):
        cls.users.append(user)

    @classmethod
    def get_all_users(cls):
        return cls.users
