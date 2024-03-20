(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sub_domain = {
  branch_name : string prop;  (** branch_name *)
  prefix : string prop;  (** prefix *)
}
[@@deriving yojson_of]
(** sub_domain *)

type aws_amplify_domain_association = {
  app_id : string prop;  (** app_id *)
  domain_name : string prop;  (** domain_name *)
  enable_auto_sub_domain : bool prop option; [@option]
      (** enable_auto_sub_domain *)
  id : string prop option; [@option]  (** id *)
  wait_for_verification : bool prop option; [@option]
      (** wait_for_verification *)
  sub_domain : sub_domain list;
}
[@@deriving yojson_of]
(** aws_amplify_domain_association *)

let sub_domain ~branch_name ~prefix () : sub_domain =
  { branch_name; prefix }

let aws_amplify_domain_association ?enable_auto_sub_domain ?id
    ?wait_for_verification ~app_id ~domain_name ~sub_domain () :
    aws_amplify_domain_association =
  {
    app_id;
    domain_name;
    enable_auto_sub_domain;
    id;
    wait_for_verification;
    sub_domain;
  }

type t = {
  app_id : string prop;
  arn : string prop;
  certificate_verification_dns_record : string prop;
  domain_name : string prop;
  enable_auto_sub_domain : bool prop;
  id : string prop;
  wait_for_verification : bool prop;
}

let make ?enable_auto_sub_domain ?id ?wait_for_verification ~app_id
    ~domain_name ~sub_domain __id =
  let __type = "aws_amplify_domain_association" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       arn = Prop.computed __type __id "arn";
       certificate_verification_dns_record =
         Prop.computed __type __id
           "certificate_verification_dns_record";
       domain_name = Prop.computed __type __id "domain_name";
       enable_auto_sub_domain =
         Prop.computed __type __id "enable_auto_sub_domain";
       id = Prop.computed __type __id "id";
       wait_for_verification =
         Prop.computed __type __id "wait_for_verification";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_amplify_domain_association
        (aws_amplify_domain_association ?enable_auto_sub_domain ?id
           ?wait_for_verification ~app_id ~domain_name ~sub_domain ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_auto_sub_domain ?id
    ?wait_for_verification ~app_id ~domain_name ~sub_domain __id =
  let (r : _ Tf_core.resource) =
    make ?enable_auto_sub_domain ?id ?wait_for_verification ~app_id
      ~domain_name ~sub_domain __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
