from fastapi import APIRouter, HTTPException
from services.reservation_service import ReservationService

router = APIRouter()

@router.post("/reservations/")
def create_reservation(reservation_data: dict):
    try:
        return ReservationService.create_reservation(reservation_data)
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))
