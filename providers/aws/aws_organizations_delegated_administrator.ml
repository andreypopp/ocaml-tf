(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_delegated_administrator = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  service_principal : string prop;  (** service_principal *)
}
[@@deriving yojson_of]
(** aws_organizations_delegated_administrator *)

let aws_organizations_delegated_administrator ?id ~account_id
    ~service_principal () : aws_organizations_delegated_administrator
    =
  { account_id; id; service_principal }

type t = {
  account_id : string prop;
  arn : string prop;
  delegation_enabled_date : string prop;
  email : string prop;
  id : string prop;
  joined_method : string prop;
  joined_timestamp : string prop;
  name : string prop;
  service_principal : string prop;
  status : string prop;
}

let make ?id ~account_id ~service_principal __id =
  let __type = "aws_organizations_delegated_administrator" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       delegation_enabled_date =
         Prop.computed __type __id "delegation_enabled_date";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       joined_method = Prop.computed __type __id "joined_method";
       joined_timestamp =
         Prop.computed __type __id "joined_timestamp";
       name = Prop.computed __type __id "name";
       service_principal =
         Prop.computed __type __id "service_principal";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_delegated_administrator
        (aws_organizations_delegated_administrator ?id ~account_id
           ~service_principal ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~service_principal __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~service_principal __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
