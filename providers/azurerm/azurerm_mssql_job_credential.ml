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

type azurerm_mssql_job_credential = {
  id : string prop option; [@option]  (** id *)
  job_agent_id : string prop;  (** job_agent_id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_job_credential *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_job_credential ?id ?timeouts ~job_agent_id ~name
    ~password ~username () : azurerm_mssql_job_credential =
  { id; job_agent_id; name; password; username; timeouts }

type t = {
  id : string prop;
  job_agent_id : string prop;
  name : string prop;
  password : string prop;
  username : string prop;
}

let make ?id ?timeouts ~job_agent_id ~name ~password ~username __id =
  let __type = "azurerm_mssql_job_credential" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       job_agent_id = Prop.computed __type __id "job_agent_id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_job_credential
        (azurerm_mssql_job_credential ?id ?timeouts ~job_agent_id
           ~name ~password ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~job_agent_id ~name ~password
    ~username __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~job_agent_id ~name ~password ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
