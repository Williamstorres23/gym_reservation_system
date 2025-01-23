from pydantic import BaseModel
from datetime import datetime

class Reservation(BaseModel):
    id: int
    user_id: int
    equipment_id: int
    start_time: datetime
    end_time: datetime

