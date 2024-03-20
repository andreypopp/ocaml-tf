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

type azurerm_batch_job = {
  batch_pool_id : string prop;  (** batch_pool_id *)
  common_environment_properties : (string * string prop) list option;
      [@option]
      (** common_environment_properties *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  task_retry_maximum : float prop option; [@option]
      (** task_retry_maximum *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_job *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_batch_job ?common_environment_properties ?display_name
    ?id ?priority ?task_retry_maximum ?timeouts ~batch_pool_id ~name
    () : azurerm_batch_job =
  {
    batch_pool_id;
    common_environment_properties;
    display_name;
    id;
    name;
    priority;
    task_retry_maximum;
    timeouts;
  }

type t = {
  batch_pool_id : string prop;
  common_environment_properties : (string * string) list prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  task_retry_maximum : float prop;
}

let make ?common_environment_properties ?display_name ?id ?priority
    ?task_retry_maximum ?timeouts ~batch_pool_id ~name __id =
  let __type = "azurerm_batch_job" in
  let __attrs =
    ({
       batch_pool_id = Prop.computed __type __id "batch_pool_id";
       common_environment_properties =
         Prop.computed __type __id "common_environment_properties";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       task_retry_maximum =
         Prop.computed __type __id "task_retry_maximum";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_batch_job
        (azurerm_batch_job ?common_environment_properties
           ?display_name ?id ?priority ?task_retry_maximum ?timeouts
           ~batch_pool_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?common_environment_properties ?display_name
    ?id ?priority ?task_retry_maximum ?timeouts ~batch_pool_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?common_environment_properties ?display_name ?id ?priority
      ?task_retry_maximum ?timeouts ~batch_pool_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
