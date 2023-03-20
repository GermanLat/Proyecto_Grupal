from flask import render_template, redirect, request, session, flash
from flask_app import app
from flask_app.models.paciente import Paciente
from flask_app.models.doctor import Doctor
from flask_app.models.consulta import Consulta
from flask_app.models.transaction import Transaction

@app.route('/odonto/agendarse')
def pagendarse():
    if 'user_id' in session:
        return render_template('agendarse.html', all_pacientes=Paciente.get_all(), all_tratamientos=Transaction.get_all_tratamientos_LD(), all_doctors=Transaction.get_all_doctors_LD())#user=session['user_name']
    else:
        flash('Tienes que iniciar sesión!')
        return redirect('/ingresar')
    
@app.route('/odonto/agendarse/procesar', methods=['POST'])
def reservar():
    if 'user_id' in session:
        data={
            "id_paciente": request.form["id_paciente"],
            "id_doctor": request.form["id_doctor"],
            "fecha_hora": request.form["fecha_hora"],
            "comentario": request.form["consulta"] + " - " + request.form["comentario"]
        }
        check=Consulta.check(data)
        if not check:
            flash("Horario no disponible")
            return redirect("/odonto/agendarse")
        else:
            Consulta.agendar(data)
            flash("Agendamiento realizado correctamente")
            print("Agendamiento realizado correctamente")
            return redirect('/dashboard')
    else:
        flash('Tienes que iniciar sesión para poder agendar citas')
        return redirect('/ingresar')
