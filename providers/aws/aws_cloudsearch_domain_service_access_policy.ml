(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cloudsearch_domain_service_access_policy = {
  access_policy : string prop;  (** access_policy *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain_service_access_policy *)

let timeouts ?delete ?update () : timeouts = { delete; update }

let aws_cloudsearch_domain_service_access_policy ?id ?timeouts
    ~access_policy ~domain_name () :
    aws_cloudsearch_domain_service_access_policy =
  { access_policy; domain_name; id; timeouts }

type t = {
  access_policy : string prop;
  domain_name : string prop;
  id : string prop;
}

let make ?id ?timeouts ~access_policy ~domain_name __id =
  let __type = "aws_cloudsearch_domain_service_access_policy" in
  let __attrs =
    ({
       access_policy = Prop.computed __type __id "access_policy";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudsearch_domain_service_access_policy
        (aws_cloudsearch_domain_service_access_policy ?id ?timeouts
           ~access_policy ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~access_policy ~domain_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~access_policy ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
