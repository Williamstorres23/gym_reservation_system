from pydantic import BaseModel

class Equipment(BaseModel):
    id: int
    name: str
    description: str
    is_available: bool = True
