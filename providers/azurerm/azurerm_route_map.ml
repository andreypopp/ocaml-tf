(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__action__parameter = {
  as_path : string prop list option; [@option]  (** as_path *)
  community : string prop list option; [@option]  (** community *)
  route_prefix : string prop list option; [@option]
      (** route_prefix *)
}
[@@deriving yojson_of]
(** rule__action__parameter *)

type rule__action = {
  type_ : string prop; [@key "type"]  (** type *)
  parameter : rule__action__parameter list;
}
[@@deriving yojson_of]
(** rule__action *)

type rule__match_criterion = {
  as_path : string prop list option; [@option]  (** as_path *)
  community : string prop list option; [@option]  (** community *)
  match_condition : string prop;  (** match_condition *)
  route_prefix : string prop list option; [@option]
      (** route_prefix *)
}
[@@deriving yojson_of]
(** rule__match_criterion *)

type rule = {
  name : string prop;  (** name *)
  next_step_if_matched : string prop option; [@option]
      (** next_step_if_matched *)
  action : rule__action list;
  match_criterion : rule__match_criterion list;
}
[@@deriving yojson_of]
(** rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_route_map = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  rule : rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_map *)

let rule__action__parameter ?as_path ?community ?route_prefix () :
    rule__action__parameter =
  { as_path; community; route_prefix }

let rule__action ~type_ ~parameter () : rule__action =
  { type_; parameter }

let rule__match_criterion ?as_path ?community ?route_prefix
    ~match_condition () : rule__match_criterion =
  { as_path; community; match_condition; route_prefix }

let rule ?next_step_if_matched ~name ~action ~match_criterion () :
    rule =
  { name; next_step_if_matched; action; match_criterion }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_route_map ?id ?timeouts ~name ~virtual_hub_id ~rule () :
    azurerm_route_map =
  { id; name; virtual_hub_id; rule; timeouts }

type t = {
  id : string prop;
  name : string prop;
  virtual_hub_id : string prop;
}

let make ?id ?timeouts ~name ~virtual_hub_id ~rule __id =
  let __type = "azurerm_route_map" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route_map
        (azurerm_route_map ?id ?timeouts ~name ~virtual_hub_id ~rule
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~virtual_hub_id ~rule
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~virtual_hub_id ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
