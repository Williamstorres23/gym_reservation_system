from dao.equipment_dao import EquipmentDAO
from models.equipment import Equipment

class EquipmentService:
    @staticmethod
    def create_equipment(equipment_data):
        equipment = Equipment(**equipment_data)
        EquipmentDAO.add_equipment(equipment)
        return equipment
