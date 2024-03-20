(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_stream_analytics_output_powerbi = {
  dataset : string prop;  (** dataset *)
  group_id : string prop;  (** group_id *)
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  stream_analytics_job_id : string prop;
      (** stream_analytics_job_id *)
  table : string prop;  (** table *)
  token_user_display_name : string prop option; [@option]
      (** token_user_display_name *)
  token_user_principal_name : string prop option; [@option]
      (** token_user_principal_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_powerbi *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_powerbi ?id
    ?token_user_display_name ?token_user_principal_name ?timeouts
    ~dataset ~group_id ~group_name ~name ~stream_analytics_job_id
    ~table () : azurerm_stream_analytics_output_powerbi =
  {
    dataset;
    group_id;
    group_name;
    id;
    name;
    stream_analytics_job_id;
    table;
    token_user_display_name;
    token_user_principal_name;
    timeouts;
  }

type t = {
  dataset : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
  name : string prop;
  stream_analytics_job_id : string prop;
  table : string prop;
  token_user_display_name : string prop;
  token_user_principal_name : string prop;
}

let make ?id ?token_user_display_name ?token_user_principal_name
    ?timeouts ~dataset ~group_id ~group_name ~name
    ~stream_analytics_job_id ~table __id =
  let __type = "azurerm_stream_analytics_output_powerbi" in
  let __attrs =
    ({
       dataset = Prop.computed __type __id "dataset";
       group_id = Prop.computed __type __id "group_id";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       stream_analytics_job_id =
         Prop.computed __type __id "stream_analytics_job_id";
       table = Prop.computed __type __id "table";
       token_user_display_name =
         Prop.computed __type __id "token_user_display_name";
       token_user_principal_name =
         Prop.computed __type __id "token_user_principal_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_powerbi
        (azurerm_stream_analytics_output_powerbi ?id
           ?token_user_display_name ?token_user_principal_name
           ?timeouts ~dataset ~group_id ~group_name ~name
           ~stream_analytics_job_id ~table ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?token_user_display_name
    ?token_user_principal_name ?timeouts ~dataset ~group_id
    ~group_name ~name ~stream_analytics_job_id ~table __id =
  let (r : _ Tf_core.resource) =
    make ?id ?token_user_display_name ?token_user_principal_name
      ?timeouts ~dataset ~group_id ~group_name ~name
      ~stream_analytics_job_id ~table __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
