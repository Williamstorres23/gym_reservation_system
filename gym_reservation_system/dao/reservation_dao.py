class ReservationDAO:
    reservations = []

    @classmethod
    def add_reservation(cls, reservation):
        cls.reservations.append(reservation)

    @classmethod
    def get_reservations_by_user(cls, user_id):
        return [r for r in cls.reservations if r.user_id == user_id]
