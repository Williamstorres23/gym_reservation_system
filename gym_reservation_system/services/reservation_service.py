from dao.reservation_dao import ReservationDAO
from dao.equipment_dao import EquipmentDAO
from models.reservation import Reservation

class ReservationService:
    @staticmethod
    def create_reservation(reservation_data):
        equipment = next((e for e in EquipmentDAO.equipment if e.id == reservation_data['equipment_id']), None)
        if equipment and equipment.is_available:
            reservation = Reservation(**reservation_data)
            ReservationDAO.add_reservation(reservation)
            equipment.is_available = False
            return reservation
        raise ValueError("Equipment not available for reservation")
