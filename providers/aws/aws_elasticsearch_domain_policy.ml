(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_elasticsearch_domain_policy = {
  access_policies : string prop;  (** access_policies *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticsearch_domain_policy *)

let timeouts ?delete ?update () : timeouts = { delete; update }

let aws_elasticsearch_domain_policy ?id ?timeouts ~access_policies
    ~domain_name () : aws_elasticsearch_domain_policy =
  { access_policies; domain_name; id; timeouts }

type t = {
  access_policies : string prop;
  domain_name : string prop;
  id : string prop;
}

let make ?id ?timeouts ~access_policies ~domain_name __id =
  let __type = "aws_elasticsearch_domain_policy" in
  let __attrs =
    ({
       access_policies = Prop.computed __type __id "access_policies";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticsearch_domain_policy
        (aws_elasticsearch_domain_policy ?id ?timeouts
           ~access_policies ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~access_policies ~domain_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~access_policies ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
