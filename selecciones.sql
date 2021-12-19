select * from orden where MESERO_mes_id = 2;
select * from orden where plato_plt_id = 4 order by ordn_fecha asc ;
select * from plato where plt_precio > 20000;
select sum(plt_precio) from plato where TIPO_PLATO_tp_plt_id = 1 or TIPO_PLATO_tp_plt_id = 2;
select * from plato;