(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_grafana_license_association = {
  id : string prop option; [@option]  (** id *)
  license_type : string prop;  (** license_type *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_grafana_license_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_grafana_license_association ?id ?timeouts ~license_type
    ~workspace_id () : aws_grafana_license_association =
  { id; license_type; workspace_id; timeouts }

type t = {
  free_trial_expiration : string prop;
  id : string prop;
  license_expiration : string prop;
  license_type : string prop;
  workspace_id : string prop;
}

let make ?id ?timeouts ~license_type ~workspace_id __id =
  let __type = "aws_grafana_license_association" in
  let __attrs =
    ({
       free_trial_expiration =
         Prop.computed __type __id "free_trial_expiration";
       id = Prop.computed __type __id "id";
       license_expiration =
         Prop.computed __type __id "license_expiration";
       license_type = Prop.computed __type __id "license_type";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_license_association
        (aws_grafana_license_association ?id ?timeouts ~license_type
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~license_type ~workspace_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~license_type ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
