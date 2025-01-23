from fastapi import FastAPI
from controllers import user_controller, equipment_controller, reservation_controller

app = FastAPI()

app.include_router(user_controller.router, prefix="/api")
app.include_router(equipment_controller.router, prefix="/api")
app.include_router(reservation_controller.router, prefix="/api")


@app.get("/rota")



def read_root():
    return {"Mensagem: Bem vindo ao sistema de Gerenciamento de Academia"}