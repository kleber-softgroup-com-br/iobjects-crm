SET check_function_bodies = false;
--
-- Structure for table crm_assunto (OID = 3973781) :
--
SET search_path = public, pg_catalog;
CREATE TABLE public.crm_assunto (
    in_assunto_id integer NOT NULL,
    va_nome varchar(250) NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_atendimento (OID = 3973784) :
--
CREATE TABLE public.crm_atendimento (
    in_empresa_id integer NOT NULL,
    in_atendimento_id integer NOT NULL,
    in_departamento_id integer NOT NULL,
    in_assunto_id integer NOT NULL,
    in_meio_id integer NOT NULL,
    in_cliente_id integer NOT NULL,
    va_descricao text NOT NULL,
    dt_inicio timestamp without time zone NOT NULL,
    dt_termino timestamp without time zone NOT NULL,
    da_inclusao timestamp(0) without time zone NOT NULL,
    in_usuario_inclusao_id integer NOT NULL,
    dt_alteracao timestamp without time zone NOT NULL,
    in_usuario_alteracao_id integer NOT NULL,
    in_campanha_id integer NOT NULL,
    va_link_externo varchar(2000) NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_atendimento_frequente (OID = 3973790) :
--
CREATE TABLE public.crm_atendimento_frequente (
    in_empresa_id integer NOT NULL,
    in_atendimento_frequente_id integer NOT NULL,
    va_nome varchar(200) NOT NULL,
    in_departamento_id integer NOT NULL,
    in_assunto_id integer NOT NULL,
    va_descricao text NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_campanha (OID = 3973796) :
--
CREATE TABLE public.crm_campanha (
    in_campanha_id integer NOT NULL,
    va_nome varchar(255) NOT NULL,
    va_descricao text NOT NULL,
    sm_arquivo smallint NOT NULL,
    da_inicio timestamp without time zone NOT NULL,
    da_termino timestamp without time zone NOT NULL,
    do_valor_investido double precision NOT NULL,
    sm_automatizada smallint NOT NULL,
    sm_dias_perdida smallint NOT NULL,
    in_usuario_inclusao_id integer NOT NULL,
    da_inclusao timestamp without time zone NOT NULL,
    in_usuario_alteracao_id integer NOT NULL,
    dt_alteracao timestamp without time zone NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_campanha_automatizada (OID = 3973802) :
--
CREATE TABLE public.crm_campanha_automatizada (
    in_campanha_id integer NOT NULL,
    in_campanha_automatizada_id integer NOT NULL,
    va_assunto varchar(250) NOT NULL,
    va_mensagem varchar NOT NULL,
    sm_dias_envio smallint NOT NULL,
    va_nome_remetente varchar(50) NOT NULL,
    va_email_remetente varchar(50) NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_fase (OID = 3973808) :
--
CREATE TABLE public.crm_fase (
    in_fase_id integer NOT NULL,
    va_nome varchar(50) NOT NULL,
    va_descricao text NOT NULL,
    sm_dias_acompanhamento smallint NOT NULL,
    sm_percentual_sucesso smallint NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_meio (OID = 3973814) :
--
CREATE TABLE public.crm_meio (
    in_meio_id integer NOT NULL,
    va_nome varchar(50) NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_modelo_atendimento (OID = 3973817) :
--
CREATE TABLE public.crm_modelo_atendimento (
    in_empresa_id integer NOT NULL,
    in_modelo_atendimento_id integer NOT NULL,
    va_nome varchar(50) NOT NULL,
    in_departamento_id integer NOT NULL,
    in_assunto_id integer NOT NULL,
    va_descricao text NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_oportunidade (OID = 3973823) :
--
CREATE TABLE public.crm_oportunidade (
    in_empresa_id integer NOT NULL,
    in_oportunidade_id integer NOT NULL,
    in_departamento_id integer NOT NULL,
    in_usuario_id integer NOT NULL,
    in_campanha_id integer NOT NULL,
    in_cliente_id integer NOT NULL,
    in_fase_id integer NOT NULL,
    da_acompanhamento timestamp(0) without time zone NOT NULL,
    sm_percentual_sucesso smallint NOT NULL,
    sm_status smallint NOT NULL,
    do_valor double precision NOT NULL,
    va_descricao text NOT NULL,
    in_usuario_inclusao_id integer NOT NULL,
    da_inclusao timestamp(0) without time zone NOT NULL,
    in_usuario_alteracao_id integer NOT NULL,
    dt_alteracao timestamp(0) without time zone NOT NULL,
    va_link_externo varchar(2000) NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_oportunidade_historico (OID = 3973829) :
--
CREATE TABLE public.crm_oportunidade_historico (
    in_empresa_id integer NOT NULL,
    in_oportunidade_id integer NOT NULL,
    in_oportunidade_historico_id integer NOT NULL,
    sm_status_anterior integer NOT NULL,
    sm_status integer NOT NULL,
    in_usuario_inclusao_id integer NOT NULL,
    dt_inclusao timestamp without time zone NOT NULL,
    va_informacao varchar(500) NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_solucao (OID = 3973835) :
--
CREATE TABLE public.crm_solucao (
    in_empresa_id integer NOT NULL,
    in_solucao_id integer NOT NULL,
    in_assunto_id integer NOT NULL,
    in_departamento_id integer NOT NULL,
    va_titulo varchar(250) NOT NULL,
    va_descricao text NOT NULL,
    sm_arquivo smallint NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_tarefa (OID = 3973841) :
--
CREATE TABLE public.crm_tarefa (
    in_empresa_id integer NOT NULL,
    in_tarefa_id integer NOT NULL,
    in_departamento_id integer NOT NULL,
    in_usuario_id integer NOT NULL,
    in_assunto_id integer NOT NULL,
    sm_prioridade smallint NOT NULL,
    in_cliente_id integer NOT NULL,
    da_prazo timestamp without time zone NOT NULL,
    sm_prorrogacao smallint NOT NULL,
    sm_status smallint NOT NULL,
    va_descricao text NOT NULL,
    da_inclusao timestamp without time zone NOT NULL,
    in_usuario_inclusao_id integer NOT NULL,
    dt_alteracao timestamp without time zone NOT NULL,
    in_usuario_alteracao_id integer NOT NULL,
    da_prazo_original timestamp(0) without time zone NOT NULL,
    va_link_externo varchar(2000) NOT NULL
)
WITH (oids = false);
--
-- Structure for table crm_tarefa_encaminhamento (OID = 3973847) :
--
CREATE TABLE public.crm_tarefa_encaminhamento (
    in_empresa_id integer NOT NULL,
    in_tarefa_id integer NOT NULL,
    in_tarefa_encaminhamento_id integer NOT NULL,
    in_departamento_id integer NOT NULL,
    in_usuario_id integer NOT NULL,
    va_descricao varchar(500) NOT NULL,
    in_usuario_inclusao_id integer NOT NULL,
    dt_inclusao timestamp(0) without time zone NOT NULL
)
WITH (oids = false);
--
-- Structure for table global_departamento (OID = 3973853) :
--
CREATE TABLE public.global_departamento (
    in_empresa_id integer NOT NULL,
    in_departamento_id integer NOT NULL,
    va_nome varchar(50) NOT NULL
)
WITH (oids = false);
--
-- Structure for table global_empresa (OID = 3973856) :
--
CREATE TABLE public.global_empresa (
    in_empresa_id integer NOT NULL,
    va_nome varchar(30) NOT NULL,
    va_razao_social varchar(250) NOT NULL,
    ch_cnpj char(14) NOT NULL,
    va_inscricao_estadual varchar(30) NOT NULL,
    va_inscricao_municipal varchar(30) NOT NULL,
    va_endereco varchar(250) NOT NULL,
    va_endereco_numero varchar(10) NOT NULL,
    va_endereco_complemento varchar(50) NOT NULL,
    va_endereco_bairro varchar(50) NOT NULL,
    va_cidade varchar(250) NOT NULL,
    ch_uf char(2) NOT NULL,
    ch_cep char(8) NOT NULL,
    va_telefone varchar(10) NOT NULL,
    va_email varchar(250) NOT NULL,
    sm_consolidadora smallint NOT NULL,
    va_servidor_smtp varchar(250) NOT NULL,
    in_porta_smtp integer NOT NULL,
    sm_requer_ssl_smtp smallint NOT NULL,
    va_usuario_email varchar(50) NOT NULL,
    va_senha_email varchar(30) NOT NULL,
    sm_copia_email integer NOT NULL,
    sm_arquivo smallint NOT NULL,
    in_usuario_inclusao_id integer NOT NULL,
    da_inclusao timestamp without time zone NOT NULL,
    in_usuario_alteracao_id integer NOT NULL,
    dt_alteracao timestamp without time zone NOT NULL,
    sm_estoque smallint DEFAULT 0 NOT NULL,
    in_serie_documento integer NOT NULL,
    in_numero_documento_fiscal integer NOT NULL,
    in_codigo_municipio integer NOT NULL,
    sm_identificacao_ambiente smallint NOT NULL,
    in_contato_contador_id integer NOT NULL,
    va_contador_crc varchar(15) NOT NULL,
    sm_regime_tributario smallint NOT NULL,
    sm_utiliza_paf smallint DEFAULT 0 NOT NULL,
    va_cnae varchar NOT NULL
)
WITH (oids = false);
--
-- Structure for table relacionamento_agenda (OID = 3973864) :
--
CREATE TABLE public.relacionamento_agenda (
    in_empresa_id integer NOT NULL,
    in_agenda_id integer NOT NULL,
    va_nome varchar(100) NOT NULL,
    ch_tabela_horario char(42) NOT NULL,
    sm_intervalo smallint NOT NULL
)
WITH (oids = false);
--
-- Structure for table relacionamento_agenda_feriado (OID = 3973867) :
--
CREATE TABLE public.relacionamento_agenda_feriado (
    in_agenda_feriado_id integer NOT NULL,
    da_feriado timestamp(0) without time zone NOT NULL,
    va_nome varchar(150) NOT NULL,
    sm_bloqueio smallint NOT NULL,
    in_empresa_id integer NOT NULL,
    in_agenda_id integer NOT NULL
)
WITH (oids = false);
--
-- Structure for table relacionamento_agenda_horario (OID = 3973870) :
--
CREATE TABLE public.relacionamento_agenda_horario (
    in_empresa_id integer NOT NULL,
    in_agenda_id integer NOT NULL,
    da_data_agendamento timestamp(0) without time zone NOT NULL,
    ch_hora_agendamento char(4) NOT NULL,
    in_contato_id integer NOT NULL,
    va_anotacoes varchar(300) NOT NULL,
    sm_status smallint NOT NULL,
    in_usuario_inclusao_id integer NOT NULL,
    dt_inclusao timestamp without time zone NOT NULL,
    in_usuario_alteracao_id integer NOT NULL,
    dt_alteracao timestamp(0) without time zone NOT NULL,
    in_agenda_horario_id integer NOT NULL
)
WITH (oids = false);
--
-- Structure for table relacionamento_contato (OID = 3973873) :
--
CREATE TABLE public.relacionamento_contato (
    in_contato_id integer NOT NULL,
    va_nome varchar(250) NOT NULL,
    in_grupo_contato_id integer NOT NULL,
    sm_tipo_pessoa smallint NOT NULL,
    ch_rg varchar(11) NOT NULL,
    ch_cpf char(11) NOT NULL,
    da_nascimento timestamp without time zone NOT NULL,
    sm_sexo smallint NOT NULL,
    va_razao_social varchar(250) NOT NULL,
    ch_cnpj char(14) NOT NULL,
    va_inscricao_estadual varchar(30) NOT NULL,
    va_inscricao_municipal varchar(30) NOT NULL,
    va_endereco varchar(250) NOT NULL,
    va_endereco_numero varchar(10) NOT NULL,
    va_endereco_complemento varchar(50) NOT NULL,
    va_endereco_bairro varchar(50) NOT NULL,
    ch_telefone_residencial char(10) NOT NULL,
    ch_telefone_celular char(10) NOT NULL,
    ch_telefone_trabalho char(10) NOT NULL,
    va_cidade varchar(250) NOT NULL,
    ch_uf char(2) NOT NULL,
    ch_cep char(8) NOT NULL,
    va_email varchar(250) NOT NULL,
    sm_cliente smallint NOT NULL,
    sm_fornecedor smallint NOT NULL,
    sm_funcionario smallint NOT NULL,
    sm_vendedor smallint NOT NULL,
    sm_transportador smallint NOT NULL,
    do_percentual_comissao double precision NOT NULL,
    va_anotacoes text NOT NULL,
    sm_arquivo smallint NOT NULL,
    in_usuario_inclusao_id integer NOT NULL,
    da_inclusao timestamp without time zone NOT NULL,
    in_usuario_alteracao_id integer NOT NULL,
    dt_alteracao timestamp without time zone NOT NULL,
    in_usuario_carteira_id integer NOT NULL,
    dt_carteira timestamp(0) without time zone NOT NULL,
    do_percentual_indicacao double precision NOT NULL,
    in_codigo_municipio integer NOT NULL,
    do_percentual_comissao_servico double precision NOT NULL,
    do_percentual_indicacao_servico double precision NOT NULL,
    va_usuario_facebook varchar(50) NOT NULL,
    va_cro varchar(50) NOT NULL
)
WITH (oids = false);
--
-- Structure for table relacionamento_contato_meta (OID = 3973879) :
--
CREATE TABLE public.relacionamento_contato_meta (
    in_contato_id integer NOT NULL,
    sm_ano integer NOT NULL,
    sm_mes integer NOT NULL,
    do_meta_venda double precision NOT NULL,
    in_empresa_id integer NOT NULL,
    do_meta_servico double precision NOT NULL
)
WITH (oids = true);
--
-- Structure for table relacionamento_grupo_contato (OID = 3973882) :
--
CREATE TABLE public.relacionamento_grupo_contato (
    in_grupo_contato_id integer NOT NULL,
    va_nome varchar(250) NOT NULL
)
WITH (oids = false);
--
-- Structure for table securityservice_log (OID = 3973885) :
--
CREATE TABLE public.securityservice_log (
    in_log_id integer NOT NULL,
    dt_operacao timestamp(0) without time zone NOT NULL,
    in_usuario_id integer NOT NULL,
    sm_operacao smallint NOT NULL,
    va_objeto varchar(80) NOT NULL,
    va_log text NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.securityservice_log ALTER COLUMN in_log_id SET STATISTICS 0;
--
-- Structure for table securityservice_papel (OID = 3973891) :
--
CREATE TABLE public.securityservice_papel (
    in_papel_id integer NOT NULL,
    va_nome varchar(255) NOT NULL,
    va_descricao varchar(255) NOT NULL,
    sm_privilegiado smallint NOT NULL,
    ch_tabela_horario char(42) NOT NULL,
    in_hash integer NOT NULL
)
WITH (oids = false);
--
-- Structure for table securityservice_papel_acao (OID = 3973897) :
--
CREATE TABLE public.securityservice_papel_acao (
    in_papel_id integer NOT NULL,
    va_acao varchar(255) NOT NULL,
    va_comandos varchar(2000) NOT NULL,
    in_hash integer NOT NULL
)
WITH (oids = false);
--
-- Structure for table securityservice_papel_relacao_mestre (OID = 3973903) :
--
CREATE TABLE public.securityservice_papel_relacao_mestre (
    in_papel_id integer NOT NULL,
    va_relacao_mestre varchar(255) NOT NULL,
    sm_privilegiado smallint NOT NULL,
    in_hash integer NOT NULL
)
WITH (oids = false);
--
-- Structure for table securityservice_papel_usuario (OID = 3973906) :
--
CREATE TABLE public.securityservice_papel_usuario (
    in_papel_id integer NOT NULL,
    in_usuario_id integer NOT NULL,
    in_hash integer NOT NULL
)
WITH (oids = false);
--
-- Structure for table securityservice_registro (OID = 3973909) :
--
CREATE TABLE public.securityservice_registro (
    in_registro_id integer NOT NULL,
    va_chave varchar(500) NOT NULL,
    va_valor text NOT NULL,
    in_valor integer NOT NULL,
    do_valor double precision NOT NULL
)
WITH (oids = false);
--
-- Structure for table securityservice_usuario (OID = 3973915) :
--
CREATE TABLE public.securityservice_usuario (
    in_usuario_id integer NOT NULL,
    va_nome varchar(255) NOT NULL,
    va_descricao varchar(255) NOT NULL,
    va_email varchar(255) NOT NULL,
    va_senha varchar(255) NOT NULL,
    va_nivel varchar(255) NOT NULL,
    sm_inativo smallint NOT NULL,
    sm_alterar_senha smallint NOT NULL,
    sm_nao_pode_alterar_senha smallint NOT NULL,
    da_alteracao_senha timestamp without time zone NOT NULL,
    in_hash integer NOT NULL,
    da_expiracao timestamp without time zone NOT NULL,
    sm_tipo_expiracao smallint NOT NULL,
    dt_ultimo_logon timestamp without time zone NOT NULL
)
WITH (oids = false);
--
-- Data for table public.crm_assunto (OID = 3973781) (LIMIT 0,4)
--
INSERT INTO crm_assunto (in_assunto_id, va_nome)
VALUES (1, 'ASSUNTO 1');

INSERT INTO crm_assunto (in_assunto_id, va_nome)
VALUES (2, 'ASSUNTO 1/FILHO 1');

INSERT INTO crm_assunto (in_assunto_id, va_nome)
VALUES (3, 'ASSUNTO 1/FILHO 2');

INSERT INTO crm_assunto (in_assunto_id, va_nome)
VALUES (4, 'ASSUNTO 2');

--
-- Data for table public.crm_atendimento (OID = 3973784) (LIMIT 0,1)
--
INSERT INTO crm_atendimento (in_empresa_id, in_atendimento_id, in_departamento_id, in_assunto_id, in_meio_id, in_cliente_id, va_descricao, dt_inicio, dt_termino, da_inclusao, in_usuario_inclusao_id, dt_alteracao, in_usuario_alteracao_id, in_campanha_id, va_link_externo)
VALUES (1, 1, 1, 1, 3, 1, '<p>O cliente ligou e reclamou dos altos pre&ccedil;os.</p>', '2015-01-17 14:59:00', '2015-01-17 14:59:54.753', '2015-01-17 00:00:00', 1, '2015-01-17 14:59:54.921', 1, 2, 'http://');

--
-- Data for table public.crm_campanha (OID = 3973796) (LIMIT 0,4)
--
INSERT INTO crm_campanha (in_campanha_id, va_nome, va_descricao, sm_arquivo, da_inicio, da_termino, do_valor_investido, sm_automatizada, sm_dias_perdida, in_usuario_inclusao_id, da_inclusao, in_usuario_alteracao_id, dt_alteracao)
VALUES (1, 'GOOGLE ADWORDS', '', 0, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, 1, '2015-01-17 00:00:00', 1, '2015-01-17 14:57:44.237');

INSERT INTO crm_campanha (in_campanha_id, va_nome, va_descricao, sm_arquivo, da_inicio, da_termino, do_valor_investido, sm_automatizada, sm_dias_perdida, in_usuario_inclusao_id, da_inclusao, in_usuario_alteracao_id, dt_alteracao)
VALUES (2, 'APPLE IAD', '', 0, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, 1, '2015-01-17 00:00:00', 1, '2015-01-17 14:57:57.8');

INSERT INTO crm_campanha (in_campanha_id, va_nome, va_descricao, sm_arquivo, da_inicio, da_termino, do_valor_investido, sm_automatizada, sm_dias_perdida, in_usuario_inclusao_id, da_inclusao, in_usuario_alteracao_id, dt_alteracao)
VALUES (3, 'MICROSOFT BING', '', 0, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, 1, '2015-01-17 00:00:00', 1, '2015-01-17 14:58:10.378');

INSERT INTO crm_campanha (in_campanha_id, va_nome, va_descricao, sm_arquivo, da_inicio, da_termino, do_valor_investido, sm_automatizada, sm_dias_perdida, in_usuario_inclusao_id, da_inclusao, in_usuario_alteracao_id, dt_alteracao)
VALUES (4, 'TELEMARKETING', '', 0, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, 1, '2015-01-17 00:00:00', 1, '2015-01-17 14:58:18.739');

--
-- Data for table public.crm_fase (OID = 3973808) (LIMIT 0,5)
--
INSERT INTO crm_fase (in_fase_id, va_nome, va_descricao, sm_dias_acompanhamento, sm_percentual_sucesso)
VALUES (2, 'PROSPECÇÃO', '', 0, 30);

INSERT INTO crm_fase (in_fase_id, va_nome, va_descricao, sm_dias_acompanhamento, sm_percentual_sucesso)
VALUES (1, 'CAPTAÇÃO', '', 0, 10);

INSERT INTO crm_fase (in_fase_id, va_nome, va_descricao, sm_dias_acompanhamento, sm_percentual_sucesso)
VALUES (3, 'ACOMPANHAMENTO', '', 0, 50);

INSERT INTO crm_fase (in_fase_id, va_nome, va_descricao, sm_dias_acompanhamento, sm_percentual_sucesso)
VALUES (5, 'AVALIAÇÃO DE CRÉDITO', '', 0, 90);

INSERT INTO crm_fase (in_fase_id, va_nome, va_descricao, sm_dias_acompanhamento, sm_percentual_sucesso)
VALUES (4, 'CONTRATO', '', 0, 100);

--
-- Data for table public.crm_meio (OID = 3973814) (LIMIT 0,5)
--
INSERT INTO crm_meio (in_meio_id, va_nome)
VALUES (1, 'E-MAIL RECEBIDO');

INSERT INTO crm_meio (in_meio_id, va_nome)
VALUES (2, 'E-MAIL ENVIADO');

INSERT INTO crm_meio (in_meio_id, va_nome)
VALUES (3, 'TELEFONEMA RECEBIDO');

INSERT INTO crm_meio (in_meio_id, va_nome)
VALUES (4, 'TELEFONEMA REALIZADO');

INSERT INTO crm_meio (in_meio_id, va_nome)
VALUES (5, 'VISITA REALIZADA');

--
-- Data for table public.crm_oportunidade (OID = 3973823) (LIMIT 0,1)
--
INSERT INTO crm_oportunidade (in_empresa_id, in_oportunidade_id, in_departamento_id, in_usuario_id, in_campanha_id, in_cliente_id, in_fase_id, da_acompanhamento, sm_percentual_sucesso, sm_status, do_valor, va_descricao, in_usuario_inclusao_id, da_inclusao, in_usuario_alteracao_id, dt_alteracao, va_link_externo)
VALUES (1, 1, 1, 1, 2, 1, 1, '1970-01-01 00:00:00', 10, 0, 12000, '<p>Venda de uma assinatura anual do pacote completo.</p>', 1, '2015-01-17 00:00:00', 1, '2015-01-17 15:02:38', 'http://');

--
-- Data for table public.crm_oportunidade_historico (OID = 3973829) (LIMIT 0,1)
--
INSERT INTO crm_oportunidade_historico (in_empresa_id, in_oportunidade_id, in_oportunidade_historico_id, sm_status_anterior, sm_status, in_usuario_inclusao_id, dt_inclusao, va_informacao)
VALUES (1, 1, 1, 0, 0, 1, '2015-01-17 15:02:38.168', '');

--
-- Data for table public.crm_tarefa (OID = 3973841) (LIMIT 0,1)
--
INSERT INTO crm_tarefa (in_empresa_id, in_tarefa_id, in_departamento_id, in_usuario_id, in_assunto_id, sm_prioridade, in_cliente_id, da_prazo, sm_prorrogacao, sm_status, va_descricao, da_inclusao, in_usuario_inclusao_id, dt_alteracao, in_usuario_alteracao_id, da_prazo_original, va_link_externo)
VALUES (1, 1, 1, 1, 2, 0, 1, '2015-01-18 00:00:00', 0, 0, '<p>Realizar avalia&ccedil;&atilde;o de cr&eacute;dito inicial do cliente para o pacote completo.</p>', '2015-01-17 00:00:00', 1, '2015-01-17 15:03:40.685', 1, '2015-01-18 00:00:00', 'http://');

--
-- Data for table public.global_departamento (OID = 3973853) (LIMIT 0,3)
--
INSERT INTO global_departamento (in_empresa_id, in_departamento_id, va_nome)
VALUES (1, 1, 'DEPARTAMENTO 1');

INSERT INTO global_departamento (in_empresa_id, in_departamento_id, va_nome)
VALUES (1, 2, 'DEPARTAMENTO 2');

INSERT INTO global_departamento (in_empresa_id, in_departamento_id, va_nome)
VALUES (1, 3, 'DEPARTAMENTO 3');

--
-- Data for table public.global_empresa (OID = 3973856) (LIMIT 0,1)
--
INSERT INTO global_empresa (in_empresa_id, va_nome, va_razao_social, ch_cnpj, va_inscricao_estadual, va_inscricao_municipal, va_endereco, va_endereco_numero, va_endereco_complemento, va_endereco_bairro, va_cidade, ch_uf, ch_cep, va_telefone, va_email, sm_consolidadora, va_servidor_smtp, in_porta_smtp, sm_requer_ssl_smtp, va_usuario_email, va_senha_email, sm_copia_email, sm_arquivo, in_usuario_inclusao_id, da_inclusao, in_usuario_alteracao_id, dt_alteracao, sm_estoque, in_serie_documento, in_numero_documento_fiscal, in_codigo_municipio, sm_identificacao_ambiente, in_contato_contador_id, va_contador_crc, sm_regime_tributario, sm_utiliza_paf, va_cnae)
VALUES (1, 'MATRIZ', '', '00000000000000', 'ISENTO', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, '', '', 0, 0, 1, '2015-01-17 00:00:00', 1, '2015-01-17 14:02:52.544', 0, 0, 0, 0, 0, 1, 'NA', 0, 0, '');

--
-- Data for table public.relacionamento_contato (OID = 3973873) (LIMIT 0,1)
--
INSERT INTO relacionamento_contato (in_contato_id, va_nome, in_grupo_contato_id, sm_tipo_pessoa, ch_rg, ch_cpf, da_nascimento, sm_sexo, va_razao_social, ch_cnpj, va_inscricao_estadual, va_inscricao_municipal, va_endereco, va_endereco_numero, va_endereco_complemento, va_endereco_bairro, ch_telefone_residencial, ch_telefone_celular, ch_telefone_trabalho, va_cidade, ch_uf, ch_cep, va_email, sm_cliente, sm_fornecedor, sm_funcionario, sm_vendedor, sm_transportador, do_percentual_comissao, va_anotacoes, sm_arquivo, in_usuario_inclusao_id, da_inclusao, in_usuario_alteracao_id, dt_alteracao, in_usuario_carteira_id, dt_carteira, do_percentual_indicacao, in_codigo_municipio, do_percentual_comissao_servico, do_percentual_indicacao_servico, va_usuario_facebook, va_cro)
VALUES (1, 'CONTATO TESTE', 1, 0, '', '', '1970-01-01 00:00:00', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 1, 1, 1, 0, '', 0, 1, '2015-01-17 00:00:00', 1, '2015-01-17 14:02:26.379', 1, '2015-01-17 14:00:00', 0, 0, 0, 0, '', '');

--
-- Data for table public.relacionamento_grupo_contato (OID = 3973882) (LIMIT 0,1)
--
INSERT INTO relacionamento_grupo_contato (in_grupo_contato_id, va_nome)
VALUES (1, '(NENHUM)');

--
-- Data for table public.securityservice_papel (OID = 3973891) (LIMIT 0,3)
--
INSERT INTO securityservice_papel (in_papel_id, va_nome, va_descricao, sm_privilegiado, ch_tabela_horario, in_hash)
VALUES (1, '@Super Usuários', 'Os super usuários têm acesso completo ao sistema e aos seus objetos e não são visíveis pelos administradores.', 1, '000000000000000000000000000000000000000000', 0);

INSERT INTO securityservice_papel (in_papel_id, va_nome, va_descricao, sm_privilegiado, ch_tabela_horario, in_hash)
VALUES (2, 'Administradores', 'Os administradores têm acesso completo ao sistema e aos seus objetos.', 1, '000000000000000000000000000000000000000000', 0);

INSERT INTO securityservice_papel (in_papel_id, va_nome, va_descricao, sm_privilegiado, ch_tabela_horario, in_hash)
VALUES (3, 'Convidados', 'Por padrão os usuários convidados não possuem direitos de acesso aos objetos do sistema.', 0, '00000003ff0003ff0003ff0003ff0003ff00000000', 0);

--
-- Data for table public.securityservice_papel_usuario (OID = 3973906) (LIMIT 0,3)
--
INSERT INTO securityservice_papel_usuario (in_papel_id, in_usuario_id, in_hash)
VALUES (1, 1, 0);

INSERT INTO securityservice_papel_usuario (in_papel_id, in_usuario_id, in_hash)
VALUES (2, 2, 0);

INSERT INTO securityservice_papel_usuario (in_papel_id, in_usuario_id, in_hash)
VALUES (3, 3, 0);

--
-- Data for table public.securityservice_usuario (OID = 3973915) (LIMIT 0,3)
--
INSERT INTO securityservice_usuario (in_usuario_id, va_nome, va_descricao, va_email, va_senha, va_nivel, sm_inativo, sm_alterar_senha, sm_nao_pode_alterar_senha, da_alteracao_senha, in_hash, da_expiracao, sm_tipo_expiracao, dt_ultimo_logon)
VALUES (2, 'Administrador', 'Conta padrão para administração do sistema.', 'administrador@iobjects', '8m5pvBXNkPuGSkJs8K4arg==', '', 0, 0, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00');

INSERT INTO securityservice_usuario (in_usuario_id, va_nome, va_descricao, va_email, va_senha, va_nivel, sm_inativo, sm_alterar_senha, sm_nao_pode_alterar_senha, da_alteracao_senha, in_hash, da_expiracao, sm_tipo_expiracao, dt_ultimo_logon)
VALUES (3, 'Convidado', 'Conta padrão para acesso como convidado ao sistema.', 'convidado@iobjects', 'cZ5VSVDNf7+qtMxfn8Imow==', '', 0, 0, 1, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00');

INSERT INTO securityservice_usuario (in_usuario_id, va_nome, va_descricao, va_email, va_senha, va_nivel, sm_inativo, sm_alterar_senha, sm_nao_pode_alterar_senha, da_alteracao_senha, in_hash, da_expiracao, sm_tipo_expiracao, dt_ultimo_logon)
VALUES (1, '@Super Usuário', 'Conta especial para administração do sistema.', '@superusuario@iobjects', 'GgLs0enY80YgJciXH7ngsg==', '', 0, 0, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, '2015-01-17 15:04:34.292');

--
-- Definition for index relacionamento_agenda_horario_horario_data (OID = 3973921) :
--
CREATE UNIQUE INDEX relacionamento_agenda_horario_horario_data ON relacionamento_agenda_horario USING btree (in_empresa_id, in_agenda_id, da_data_agendamento, ch_hora_agendamento);
--
-- Definition for index crm_assunto_pkey (OID = 3973922) :
--
ALTER TABLE ONLY crm_assunto
    ADD CONSTRAINT crm_assunto_pkey
    PRIMARY KEY (in_assunto_id);
--
-- Definition for index crm_assunto_va_nome_key (OID = 3973924) :
--
ALTER TABLE ONLY crm_assunto
    ADD CONSTRAINT crm_assunto_va_nome_key
    UNIQUE (va_nome);
--
-- Definition for index crm_atendimento_frequente_new_pkey (OID = 3973926) :
--
ALTER TABLE ONLY crm_atendimento_frequente
    ADD CONSTRAINT crm_atendimento_frequente_new_pkey
    PRIMARY KEY (in_empresa_id, in_atendimento_frequente_id);
--
-- Definition for index crm_atendimento_pkey (OID = 3973928) :
--
ALTER TABLE ONLY crm_atendimento
    ADD CONSTRAINT crm_atendimento_pkey
    PRIMARY KEY (in_empresa_id, in_atendimento_id);
--
-- Definition for index crm_campanha_automatizada_idx (OID = 3973930) :
--
ALTER TABLE ONLY crm_campanha_automatizada
    ADD CONSTRAINT crm_campanha_automatizada_idx
    PRIMARY KEY (in_campanha_id, in_campanha_automatizada_id);
--
-- Definition for index crm_campanha_pkey (OID = 3973932) :
--
ALTER TABLE ONLY crm_campanha
    ADD CONSTRAINT crm_campanha_pkey
    PRIMARY KEY (in_campanha_id);
--
-- Definition for index crm_campanha_va_nome_key (OID = 3973934) :
--
ALTER TABLE ONLY crm_campanha
    ADD CONSTRAINT crm_campanha_va_nome_key
    UNIQUE (va_nome);
--
-- Definition for index crm_fase_pkey (OID = 3973936) :
--
ALTER TABLE ONLY crm_fase
    ADD CONSTRAINT crm_fase_pkey
    PRIMARY KEY (in_fase_id);
--
-- Definition for index crm_fase_va_nome_key (OID = 3973938) :
--
ALTER TABLE ONLY crm_fase
    ADD CONSTRAINT crm_fase_va_nome_key
    UNIQUE (va_nome);
--
-- Definition for index crm_meio_pkey (OID = 3973940) :
--
ALTER TABLE ONLY crm_meio
    ADD CONSTRAINT crm_meio_pkey
    PRIMARY KEY (in_meio_id);
--
-- Definition for index crm_meio_va_nome_key (OID = 3973942) :
--
ALTER TABLE ONLY crm_meio
    ADD CONSTRAINT crm_meio_va_nome_key
    UNIQUE (va_nome);
--
-- Definition for index crm_modelo_atendimento_pkey (OID = 3973944) :
--
ALTER TABLE ONLY crm_modelo_atendimento
    ADD CONSTRAINT crm_modelo_atendimento_pkey
    PRIMARY KEY (in_empresa_id, in_modelo_atendimento_id);
--
-- Definition for index crm_modelo_atendimento_va_nome_key (OID = 3973946) :
--
ALTER TABLE ONLY crm_modelo_atendimento
    ADD CONSTRAINT crm_modelo_atendimento_va_nome_key
    UNIQUE (va_nome);
--
-- Definition for index crm_oportunidade_historico_pkey (OID = 3973948) :
--
ALTER TABLE ONLY crm_oportunidade_historico
    ADD CONSTRAINT crm_oportunidade_historico_pkey
    PRIMARY KEY (in_empresa_id, in_oportunidade_id, in_oportunidade_historico_id);
--
-- Definition for index crm_oportunidade_pkey (OID = 3973950) :
--
ALTER TABLE ONLY crm_oportunidade
    ADD CONSTRAINT crm_oportunidade_pkey
    PRIMARY KEY (in_empresa_id, in_oportunidade_id);
--
-- Definition for index crm_solucao_pkey (OID = 3973952) :
--
ALTER TABLE ONLY crm_solucao
    ADD CONSTRAINT crm_solucao_pkey
    PRIMARY KEY (in_empresa_id, in_solucao_id);
--
-- Definition for index crm_tarefa_encaminhamento_pkey (OID = 3973954) :
--
ALTER TABLE ONLY crm_tarefa_encaminhamento
    ADD CONSTRAINT crm_tarefa_encaminhamento_pkey
    PRIMARY KEY (in_empresa_id, in_tarefa_id, in_tarefa_encaminhamento_id);
--
-- Definition for index crm_tarefa_pkey (OID = 3973956) :
--
ALTER TABLE ONLY crm_tarefa
    ADD CONSTRAINT crm_tarefa_pkey
    PRIMARY KEY (in_empresa_id, in_tarefa_id);
--
-- Definition for index global_departamento_pkey (OID = 3973958) :
--
ALTER TABLE ONLY global_departamento
    ADD CONSTRAINT global_departamento_pkey
    PRIMARY KEY (in_empresa_id, in_departamento_id);
--
-- Definition for index global_departamento_va_nome_key (OID = 3973960) :
--
ALTER TABLE ONLY global_departamento
    ADD CONSTRAINT global_departamento_va_nome_key
    UNIQUE (in_empresa_id, va_nome);
--
-- Definition for index global_empresa_ch_cnpj_key (OID = 3973962) :
--
ALTER TABLE ONLY global_empresa
    ADD CONSTRAINT global_empresa_ch_cnpj_key
    UNIQUE (ch_cnpj);
--
-- Definition for index global_empresa_pkey (OID = 3973964) :
--
ALTER TABLE ONLY global_empresa
    ADD CONSTRAINT global_empresa_pkey
    PRIMARY KEY (in_empresa_id);
--
-- Definition for index global_empresa_va_nome_key (OID = 3973966) :
--
ALTER TABLE ONLY global_empresa
    ADD CONSTRAINT global_empresa_va_nome_key
    UNIQUE (va_nome);
--
-- Definition for index relacionamento_agenda_feriado_pkey (OID = 3973968) :
--
ALTER TABLE ONLY relacionamento_agenda_feriado
    ADD CONSTRAINT relacionamento_agenda_feriado_pkey
    PRIMARY KEY (in_agenda_feriado_id);
--
-- Definition for index relacionamento_agenda_horario_new_pkey (OID = 3973970) :
--
ALTER TABLE ONLY relacionamento_agenda_horario
    ADD CONSTRAINT relacionamento_agenda_horario_new_pkey
    PRIMARY KEY (in_empresa_id, in_agenda_id, in_agenda_horario_id);
--
-- Definition for index relacionamento_agenda_pkey (OID = 3973972) :
--
ALTER TABLE ONLY relacionamento_agenda
    ADD CONSTRAINT relacionamento_agenda_pkey
    PRIMARY KEY (in_empresa_id, in_agenda_id);
--
-- Definition for index relacionamento_contato_meta_idx (OID = 3973974) :
--
ALTER TABLE ONLY relacionamento_contato_meta
    ADD CONSTRAINT relacionamento_contato_meta_idx
    PRIMARY KEY (in_empresa_id, in_contato_id, sm_ano, sm_mes);
--
-- Definition for index relacionamento_contato_pkey (OID = 3973976) :
--
ALTER TABLE ONLY relacionamento_contato
    ADD CONSTRAINT relacionamento_contato_pkey
    PRIMARY KEY (in_contato_id);
--
-- Definition for index relacionamento_grupo_contato_pkey (OID = 3973978) :
--
ALTER TABLE ONLY relacionamento_grupo_contato
    ADD CONSTRAINT relacionamento_grupo_contato_pkey
    PRIMARY KEY (in_grupo_contato_id);
--
-- Definition for index relacionamento_grupo_contato_va_nome_key (OID = 3973980) :
--
ALTER TABLE ONLY relacionamento_grupo_contato
    ADD CONSTRAINT relacionamento_grupo_contato_va_nome_key
    UNIQUE (va_nome);
--
-- Definition for index securityservice_log_pkey (OID = 3973982) :
--
ALTER TABLE ONLY securityservice_log
    ADD CONSTRAINT securityservice_log_pkey
    PRIMARY KEY (in_log_id);
--
-- Definition for index securityservice_papel_acao_pkey (OID = 3973984) :
--
ALTER TABLE ONLY securityservice_papel_acao
    ADD CONSTRAINT securityservice_papel_acao_pkey
    PRIMARY KEY (in_papel_id, va_acao);
--
-- Definition for index securityservice_papel_pkey (OID = 3973986) :
--
ALTER TABLE ONLY securityservice_papel
    ADD CONSTRAINT securityservice_papel_pkey
    PRIMARY KEY (in_papel_id);
--
-- Definition for index securityservice_papel_relacao_mestre_pkey (OID = 3973988) :
--
ALTER TABLE ONLY securityservice_papel_relacao_mestre
    ADD CONSTRAINT securityservice_papel_relacao_mestre_pkey
    PRIMARY KEY (in_papel_id, va_relacao_mestre);
--
-- Definition for index securityservice_papel_usuario_pkey (OID = 3973990) :
--
ALTER TABLE ONLY securityservice_papel_usuario
    ADD CONSTRAINT securityservice_papel_usuario_pkey
    PRIMARY KEY (in_papel_id, in_usuario_id);
--
-- Definition for index securityservice_papel_va_nome_key (OID = 3973992) :
--
ALTER TABLE ONLY securityservice_papel
    ADD CONSTRAINT securityservice_papel_va_nome_key
    UNIQUE (va_nome);
--
-- Definition for index securityservice_registro_pkey (OID = 3973994) :
--
ALTER TABLE ONLY securityservice_registro
    ADD CONSTRAINT securityservice_registro_pkey
    PRIMARY KEY (in_registro_id);
--
-- Definition for index securityservice_usuario_pkey (OID = 3973996) :
--
ALTER TABLE ONLY securityservice_usuario
    ADD CONSTRAINT securityservice_usuario_pkey
    PRIMARY KEY (in_usuario_id);
--
-- Definition for index securityservice_usuario_va_email_key (OID = 3973998) :
--
ALTER TABLE ONLY securityservice_usuario
    ADD CONSTRAINT securityservice_usuario_va_email_key
    UNIQUE (va_email);
--
-- Definition for index securityservice_usuario_va_nome_key (OID = 3974000) :
--
ALTER TABLE ONLY securityservice_usuario
    ADD CONSTRAINT securityservice_usuario_va_nome_key
    UNIQUE (va_nome);
--
-- Definition for index securityservice_va_chave_key (OID = 3974002) :
--
ALTER TABLE ONLY securityservice_registro
    ADD CONSTRAINT securityservice_va_chave_key
    UNIQUE (va_chave);
--
-- Definition for index crm_atendimento_assunto (OID = 3974004) :
--
ALTER TABLE ONLY crm_atendimento
    ADD CONSTRAINT crm_atendimento_assunto
    FOREIGN KEY (in_assunto_id) REFERENCES crm_assunto(in_assunto_id);
--
-- Definition for index crm_atendimento_campanha (OID = 3974009) :
--
ALTER TABLE ONLY crm_atendimento
    ADD CONSTRAINT crm_atendimento_campanha
    FOREIGN KEY (in_campanha_id) REFERENCES crm_campanha(in_campanha_id);
--
-- Definition for index crm_atendimento_contato (OID = 3974014) :
--
ALTER TABLE ONLY crm_atendimento
    ADD CONSTRAINT crm_atendimento_contato
    FOREIGN KEY (in_cliente_id) REFERENCES relacionamento_contato(in_contato_id);
--
-- Definition for index crm_atendimento_departamento (OID = 3974019) :
--
ALTER TABLE ONLY crm_atendimento
    ADD CONSTRAINT crm_atendimento_departamento
    FOREIGN KEY (in_empresa_id, in_departamento_id) REFERENCES global_departamento(in_empresa_id, in_departamento_id);
--
-- Definition for index crm_atendimento_frequente_assunto (OID = 3974024) :
--
ALTER TABLE ONLY crm_atendimento_frequente
    ADD CONSTRAINT crm_atendimento_frequente_assunto
    FOREIGN KEY (in_assunto_id) REFERENCES crm_assunto(in_assunto_id);
--
-- Definition for index crm_atendimento_frequente_empresa_departamento (OID = 3974029) :
--
ALTER TABLE ONLY crm_atendimento_frequente
    ADD CONSTRAINT crm_atendimento_frequente_empresa_departamento
    FOREIGN KEY (in_empresa_id, in_departamento_id) REFERENCES global_departamento(in_empresa_id, in_departamento_id);
--
-- Definition for index crm_atendimento_meio (OID = 3974034) :
--
ALTER TABLE ONLY crm_atendimento
    ADD CONSTRAINT crm_atendimento_meio
    FOREIGN KEY (in_meio_id) REFERENCES crm_meio(in_meio_id);
--
-- Definition for index crm_atendimento_usuario_alteracao (OID = 3974039) :
--
ALTER TABLE ONLY crm_atendimento
    ADD CONSTRAINT crm_atendimento_usuario_alteracao
    FOREIGN KEY (in_usuario_alteracao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_atendimento_usuario_inclusao (OID = 3974044) :
--
ALTER TABLE ONLY crm_atendimento
    ADD CONSTRAINT crm_atendimento_usuario_inclusao
    FOREIGN KEY (in_usuario_inclusao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_campanha_automatizada_fk (OID = 3974049) :
--
ALTER TABLE ONLY crm_campanha_automatizada
    ADD CONSTRAINT crm_campanha_automatizada_fk
    FOREIGN KEY (in_campanha_id) REFERENCES crm_campanha(in_campanha_id);
--
-- Definition for index crm_campanha_fk (OID = 3974054) :
--
ALTER TABLE ONLY crm_campanha
    ADD CONSTRAINT crm_campanha_fk
    FOREIGN KEY (in_usuario_inclusao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_campanha_fk1 (OID = 3974059) :
--
ALTER TABLE ONLY crm_campanha
    ADD CONSTRAINT crm_campanha_fk1
    FOREIGN KEY (in_usuario_alteracao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_modelo_atendimento_assunto (OID = 3974064) :
--
ALTER TABLE ONLY crm_modelo_atendimento
    ADD CONSTRAINT crm_modelo_atendimento_assunto
    FOREIGN KEY (in_assunto_id) REFERENCES crm_assunto(in_assunto_id);
--
-- Definition for index crm_modelo_atendimento_departamento (OID = 3974069) :
--
ALTER TABLE ONLY crm_modelo_atendimento
    ADD CONSTRAINT crm_modelo_atendimento_departamento
    FOREIGN KEY (in_empresa_id, in_departamento_id) REFERENCES global_departamento(in_empresa_id, in_departamento_id);
--
-- Definition for index crm_oportunidade_campanha (OID = 3974074) :
--
ALTER TABLE ONLY crm_oportunidade
    ADD CONSTRAINT crm_oportunidade_campanha
    FOREIGN KEY (in_campanha_id) REFERENCES crm_campanha(in_campanha_id);
--
-- Definition for index crm_oportunidade_contato (OID = 3974079) :
--
ALTER TABLE ONLY crm_oportunidade
    ADD CONSTRAINT crm_oportunidade_contato
    FOREIGN KEY (in_cliente_id) REFERENCES relacionamento_contato(in_contato_id);
--
-- Definition for index crm_oportunidade_departamento (OID = 3974084) :
--
ALTER TABLE ONLY crm_oportunidade
    ADD CONSTRAINT crm_oportunidade_departamento
    FOREIGN KEY (in_empresa_id, in_departamento_id) REFERENCES global_departamento(in_empresa_id, in_departamento_id);
--
-- Definition for index crm_oportunidade_fase (OID = 3974089) :
--
ALTER TABLE ONLY crm_oportunidade
    ADD CONSTRAINT crm_oportunidade_fase
    FOREIGN KEY (in_fase_id) REFERENCES crm_fase(in_fase_id);
--
-- Definition for index crm_oportunidade_historico_empresa_oportunidade (OID = 3974094) :
--
ALTER TABLE ONLY crm_oportunidade_historico
    ADD CONSTRAINT crm_oportunidade_historico_empresa_oportunidade
    FOREIGN KEY (in_empresa_id, in_oportunidade_id) REFERENCES crm_oportunidade(in_empresa_id, in_oportunidade_id);
--
-- Definition for index crm_oportunidade_historico_usuario_inclusao (OID = 3974099) :
--
ALTER TABLE ONLY crm_oportunidade_historico
    ADD CONSTRAINT crm_oportunidade_historico_usuario_inclusao
    FOREIGN KEY (in_usuario_inclusao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_oportunidade_usuario (OID = 3974104) :
--
ALTER TABLE ONLY crm_oportunidade
    ADD CONSTRAINT crm_oportunidade_usuario
    FOREIGN KEY (in_usuario_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_oportunidade_usuario_alteracao (OID = 3974109) :
--
ALTER TABLE ONLY crm_oportunidade
    ADD CONSTRAINT crm_oportunidade_usuario_alteracao
    FOREIGN KEY (in_usuario_alteracao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_oportunidade_usuario_inclusao (OID = 3974114) :
--
ALTER TABLE ONLY crm_oportunidade
    ADD CONSTRAINT crm_oportunidade_usuario_inclusao
    FOREIGN KEY (in_usuario_inclusao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_solucao_assunto (OID = 3974119) :
--
ALTER TABLE ONLY crm_solucao
    ADD CONSTRAINT crm_solucao_assunto
    FOREIGN KEY (in_assunto_id) REFERENCES crm_assunto(in_assunto_id);
--
-- Definition for index crm_solucao_departamento (OID = 3974124) :
--
ALTER TABLE ONLY crm_solucao
    ADD CONSTRAINT crm_solucao_departamento
    FOREIGN KEY (in_empresa_id, in_departamento_id) REFERENCES global_departamento(in_empresa_id, in_departamento_id);
--
-- Definition for index crm_tarefa_assunto (OID = 3974129) :
--
ALTER TABLE ONLY crm_tarefa
    ADD CONSTRAINT crm_tarefa_assunto
    FOREIGN KEY (in_assunto_id) REFERENCES crm_assunto(in_assunto_id);
--
-- Definition for index crm_tarefa_contato (OID = 3974134) :
--
ALTER TABLE ONLY crm_tarefa
    ADD CONSTRAINT crm_tarefa_contato
    FOREIGN KEY (in_cliente_id) REFERENCES relacionamento_contato(in_contato_id);
--
-- Definition for index crm_tarefa_departamento (OID = 3974139) :
--
ALTER TABLE ONLY crm_tarefa
    ADD CONSTRAINT crm_tarefa_departamento
    FOREIGN KEY (in_empresa_id, in_departamento_id) REFERENCES global_departamento(in_empresa_id, in_departamento_id);
--
-- Definition for index crm_tarefa_encaminhamento_departamento (OID = 3974144) :
--
ALTER TABLE ONLY crm_tarefa_encaminhamento
    ADD CONSTRAINT crm_tarefa_encaminhamento_departamento
    FOREIGN KEY (in_empresa_id, in_departamento_id) REFERENCES global_departamento(in_empresa_id, in_departamento_id);
--
-- Definition for index crm_tarefa_encaminhamento_tarefa (OID = 3974149) :
--
ALTER TABLE ONLY crm_tarefa_encaminhamento
    ADD CONSTRAINT crm_tarefa_encaminhamento_tarefa
    FOREIGN KEY (in_empresa_id, in_tarefa_id) REFERENCES crm_tarefa(in_empresa_id, in_tarefa_id);
--
-- Definition for index crm_tarefa_encaminhamento_usuario (OID = 3974154) :
--
ALTER TABLE ONLY crm_tarefa_encaminhamento
    ADD CONSTRAINT crm_tarefa_encaminhamento_usuario
    FOREIGN KEY (in_usuario_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_tarefa_encaminhamento_usuario_inclusao (OID = 3974159) :
--
ALTER TABLE ONLY crm_tarefa_encaminhamento
    ADD CONSTRAINT crm_tarefa_encaminhamento_usuario_inclusao
    FOREIGN KEY (in_usuario_inclusao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_tarefa_usuario (OID = 3974164) :
--
ALTER TABLE ONLY crm_tarefa
    ADD CONSTRAINT crm_tarefa_usuario
    FOREIGN KEY (in_usuario_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_tarefa_usuario_alteracao (OID = 3974169) :
--
ALTER TABLE ONLY crm_tarefa
    ADD CONSTRAINT crm_tarefa_usuario_alteracao
    FOREIGN KEY (in_usuario_alteracao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index crm_tarefa_usuario_inclusao (OID = 3974174) :
--
ALTER TABLE ONLY crm_tarefa
    ADD CONSTRAINT crm_tarefa_usuario_inclusao
    FOREIGN KEY (in_usuario_inclusao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index empresa_in_contato_contador_id (OID = 3974179) :
--
ALTER TABLE ONLY global_empresa
    ADD CONSTRAINT empresa_in_contato_contador_id
    FOREIGN KEY (in_contato_contador_id) REFERENCES relacionamento_contato(in_contato_id);
--
-- Definition for index empresa_in_usuario_alteracao_id_fkey (OID = 3974184) :
--
ALTER TABLE ONLY global_empresa
    ADD CONSTRAINT empresa_in_usuario_alteracao_id_fkey
    FOREIGN KEY (in_usuario_alteracao_id) REFERENCES securityservice_usuario(in_usuario_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index empresa_in_usuario_inclusao_id_fkey (OID = 3974189) :
--
ALTER TABLE ONLY global_empresa
    ADD CONSTRAINT empresa_in_usuario_inclusao_id_fkey
    FOREIGN KEY (in_usuario_inclusao_id) REFERENCES securityservice_usuario(in_usuario_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index global_departamento_empresa (OID = 3974194) :
--
ALTER TABLE ONLY global_departamento
    ADD CONSTRAINT global_departamento_empresa
    FOREIGN KEY (in_empresa_id) REFERENCES global_empresa(in_empresa_id);
--
-- Definition for index relacionamento_agenda_empresa (OID = 3974199) :
--
ALTER TABLE ONLY relacionamento_agenda
    ADD CONSTRAINT relacionamento_agenda_empresa
    FOREIGN KEY (in_empresa_id) REFERENCES global_empresa(in_empresa_id);
--
-- Definition for index relacionamento_agenda_horario_contato (OID = 3974204) :
--
ALTER TABLE ONLY relacionamento_agenda_horario
    ADD CONSTRAINT relacionamento_agenda_horario_contato
    FOREIGN KEY (in_contato_id) REFERENCES relacionamento_contato(in_contato_id);
--
-- Definition for index relacionamento_agenda_horario_empresa_agenda (OID = 3974209) :
--
ALTER TABLE ONLY relacionamento_agenda_horario
    ADD CONSTRAINT relacionamento_agenda_horario_empresa_agenda
    FOREIGN KEY (in_empresa_id, in_agenda_id) REFERENCES relacionamento_agenda(in_empresa_id, in_agenda_id);
--
-- Definition for index relacionamento_agenda_horario_usuario_alteracao (OID = 3974214) :
--
ALTER TABLE ONLY relacionamento_agenda_horario
    ADD CONSTRAINT relacionamento_agenda_horario_usuario_alteracao
    FOREIGN KEY (in_usuario_alteracao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index relacionamento_agenda_horario_usuario_inclusao (OID = 3974219) :
--
ALTER TABLE ONLY relacionamento_agenda_horario
    ADD CONSTRAINT relacionamento_agenda_horario_usuario_inclusao
    FOREIGN KEY (in_usuario_inclusao_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index relacionamento_contato_grupo (OID = 3974224) :
--
ALTER TABLE ONLY relacionamento_contato
    ADD CONSTRAINT relacionamento_contato_grupo
    FOREIGN KEY (in_grupo_contato_id) REFERENCES relacionamento_grupo_contato(in_grupo_contato_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index relacionamento_contato_meta_contato (OID = 3974229) :
--
ALTER TABLE ONLY relacionamento_contato_meta
    ADD CONSTRAINT relacionamento_contato_meta_contato
    FOREIGN KEY (in_contato_id) REFERENCES relacionamento_contato(in_contato_id);
--
-- Definition for index relacionamento_contato_meta_empresa (OID = 3974234) :
--
ALTER TABLE ONLY relacionamento_contato_meta
    ADD CONSTRAINT relacionamento_contato_meta_empresa
    FOREIGN KEY (in_empresa_id) REFERENCES global_empresa(in_empresa_id);
--
-- Definition for index relacionamento_contato_usuario_alteracao (OID = 3974239) :
--
ALTER TABLE ONLY relacionamento_contato
    ADD CONSTRAINT relacionamento_contato_usuario_alteracao
    FOREIGN KEY (in_usuario_alteracao_id) REFERENCES securityservice_usuario(in_usuario_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index relacionamento_contato_usuario_carteira (OID = 3974244) :
--
ALTER TABLE ONLY relacionamento_contato
    ADD CONSTRAINT relacionamento_contato_usuario_carteira
    FOREIGN KEY (in_usuario_carteira_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index relacionamento_contato_usuario_inclusao (OID = 3974249) :
--
ALTER TABLE ONLY relacionamento_contato
    ADD CONSTRAINT relacionamento_contato_usuario_inclusao
    FOREIGN KEY (in_usuario_inclusao_id) REFERENCES securityservice_usuario(in_usuario_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index securityservice_log_usuario (OID = 3974254) :
--
ALTER TABLE ONLY securityservice_log
    ADD CONSTRAINT securityservice_log_usuario
    FOREIGN KEY (in_usuario_id) REFERENCES securityservice_usuario(in_usuario_id);
--
-- Definition for index securityservice_papel_acao_in_papel_id_fkey (OID = 3974259) :
--
ALTER TABLE ONLY securityservice_papel_acao
    ADD CONSTRAINT securityservice_papel_acao_in_papel_id_fkey
    FOREIGN KEY (in_papel_id) REFERENCES securityservice_papel(in_papel_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index securityservice_papel_relacao_mestre_in_papel_id_fkey (OID = 3974264) :
--
ALTER TABLE ONLY securityservice_papel_relacao_mestre
    ADD CONSTRAINT securityservice_papel_relacao_mestre_in_papel_id_fkey
    FOREIGN KEY (in_papel_id) REFERENCES securityservice_papel(in_papel_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index securityservice_papel_usuario_in_papel_id_fkey (OID = 3974269) :
--
ALTER TABLE ONLY securityservice_papel_usuario
    ADD CONSTRAINT securityservice_papel_usuario_in_papel_id_fkey
    FOREIGN KEY (in_papel_id) REFERENCES securityservice_papel(in_papel_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Definition for index securityservice_papel_usuario_in_usuario_id_fkey (OID = 3974274) :
--
ALTER TABLE ONLY securityservice_papel_usuario
    ADD CONSTRAINT securityservice_papel_usuario_in_usuario_id_fkey
    FOREIGN KEY (in_usuario_id) REFERENCES securityservice_usuario(in_usuario_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
