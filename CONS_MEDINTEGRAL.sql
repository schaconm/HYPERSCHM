-- BASE DATOS MEDINTEGRAL
-- Creado por SIMEON CHACON MURILLO
-- TABLA commusuario - USUARIOS DE LA BD 
select * from commusuario												-- 118 usuarios 
select * from commusuario where usuIdenUsuario ='10220478'				-- IdUsuario por C.C. usuIDUsuario 
select * from redprofesional where IdUsuario =118						-- Profesional por IdUsuario (profesional)
select * from redProfEspecialidad where prfeIDProf =95					--- prfIDProf ... para ver prfeIDProfEspecialidad
																		-- prfeIDProfEspecialidad	prfeIDProf	prfeIDEspeTT
																		--153						95			63
select * from SProgramas.ProfesionalPrograma where IdPrograma =31		-- IdPrograma ... para ver profesionales/procedimientos/programa 31 y 33
select * from SProgramas.ProfesionalPrograma where IdPrograma =33
select * from redProcedimiento where proIDProcedimiento in (11747)		-- proIDProcedimiento para ver el procedimiento 14236--(14236,11710,11747,11738)
																		-- 11711	SISTEMA INTEGRAL PARA EL PACIENTE CON ARTRITIS REUMATOIDEA (ATENCION Y MEDICAMENTOS)
																		-- 14236	PAQARTR CONSULTA DE PRIMERA VEZ POR MEDICINA GENERAL
																		-- 11747	PAQHEMO CONSULTA DE CONTROL O DE SEGUIMIENTO POR ESPECIALISTA EN HEMATOLOGIA

																		--insert into SProgramas.ProfesionalPrograma values (31,95,1,1,14236)
																		--insert into SProgramas.ProfesionalPrograma values (33,95,1,1,14236)
																		--insert into SProgramas.ProfesionalPrograma values (31,95,1,1,11747)
																		--insert into SProgramas.ProfesionalPrograma values (33,95,1,1,11747)
select * from aficliente where cliiden='#CCCCCCCC'						-- TABLA aficliente. B�squeda de clientes (pacientes) por CEDULA
select * from aficliente where cliiden='12201852'
select * from aficliente where cliiden='1075295724'
select IdIngreso, * from hclAgenda where citIdProfesional =95			-- TABLA hclAgenda ... B�squedas en citas agendadas
select IdIngreso, * from hclAgenda where citIdUsuario =22833
select * from hclAgeEstadoCita											-- TABLA hclAgeEstadoCita ...REFERENCIA DE ESTADOS DE UNA CITA AGENDADA 0 en tramit 4 con el medico 12 pagada                                                                                                                                   
																		-- PRCEDIMIENTOS TIPO PAQUETE ... empiezan por PAQARTR y PAQHEMO: Ejemplos:
																		-- 11747	PAQHEMO CONSULTA DE CONTROL O DE SEGUIMIENTO POR ESPECIALISTA EN HEMATOLOGIA
																		-- 14236	PAQARTR CONSULTA DE PRIMERA VEZ POR MEDICINA GENERAL
select * from SContratacion.Paquetes									-- TABLA SContratacion.Paquetes ... DE PAQUETES
select * from cirContratoProcedActivo where IdProced in (11747,14236)	-- TABLA cirContratoProcedActivo ... DE PROCEDIMIENTOS 11747,14236 (38)
select * from redContrato												-- TABLA redContrato contratos (65)
																		-- AIC Subsidiado
select * from SHabilitacion.Pagador										-- TABLA SHabilitacion.Pagador PAGADORES (363)--45 Asociacion Indigena del Cauca EPS-I
select * from hclagenda where citIdProfesional =88										-- CITAS POR PROFESIONAL
select * from scitas.Calendario where IDProfesional =88 --10093							-- CITAS CALENDARIO POR PROFESIONAL
select * from SCitas.DetalleCalendario where IDCalendario =10093						-- CITAS CALENDARIO POR PROFESIONAL -- (180)
select * from SCitas.ProcedimientoCalendario where IDCalendario = 10093
select * from Aficliente																--(1852) -- TABLA Aficliente
select * from hclagenda where citIdProfesional =95										-- HCL por profesional por citIdProfesional (11)
select * from redProcedimiento order by proIDProcedimiento,proDesProcedimiento asc		-- TABLA de procedimientos
select * from redProcedimiento where proIDProcedimiento in (11711,14236)
select * from scitas.Calendario where IDProfesional =95									--10093
select * from SCitas.DetalleCalendario where IDCalendario =10098
select * from SCitas.ProcedimientoCalendario where IDCalendario = 10098
select * from SContratacion.Paquetes where IDProcedimientoCUPS=11711						--2
select * from SContratacion.PaquetesDetalle where IDPaquetes=2 and IDTecnologia=14236

																						-- update hclingreso set IngEstado =3 where IngIDNumIngreso =1131