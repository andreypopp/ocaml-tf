(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_inspector2_enabler = {
  account_ids : string prop list;  (** account_ids *)
  id : string prop option; [@option]  (** id *)
  resource_types : string prop list;  (** resource_types *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_inspector2_enabler *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_inspector2_enabler ?id ?timeouts ~account_ids ~resource_types
    () : aws_inspector2_enabler =
  { account_ids; id; resource_types; timeouts }

type t = {
  account_ids : string list prop;
  id : string prop;
  resource_types : string list prop;
}

let make ?id ?timeouts ~account_ids ~resource_types __id =
  let __type = "aws_inspector2_enabler" in
  let __attrs =
    ({
       account_ids = Prop.computed __type __id "account_ids";
       id = Prop.computed __type __id "id";
       resource_types = Prop.computed __type __id "resource_types";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_inspector2_enabler
        (aws_inspector2_enabler ?id ?timeouts ~account_ids
           ~resource_types ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_ids ~resource_types
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_ids ~resource_types __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
