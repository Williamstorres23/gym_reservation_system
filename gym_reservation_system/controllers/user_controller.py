from fastapi import APIRouter
from services.user_service import UserService

router = APIRouter()

@router.get("/users")
def get_users():
    return {"Mensagem: Lista de usuários"}