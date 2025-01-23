class EquipmentDAO:
    equipment = []

    @classmethod
    def add_equipment(cls, equipment):
        cls.equipment.append(equipment)

    @classmethod
    def get_available_equipment(cls):
        return [e for e in cls.equipment if e.is_available]
