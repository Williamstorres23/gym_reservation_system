from fastapi import APIRouter
from services.equipment_service import EquipmentService

router = APIRouter()

@router.post("/equipment/")
def create_equipment(equipment_data: dict):
    return EquipmentService.create_equipment(equipment_data)
