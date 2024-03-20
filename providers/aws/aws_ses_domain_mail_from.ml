(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_domain_mail_from = {
  behavior_on_mx_failure : string prop option; [@option]
      (** behavior_on_mx_failure *)
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
  mail_from_domain : string prop;  (** mail_from_domain *)
}
[@@deriving yojson_of]
(** aws_ses_domain_mail_from *)

let aws_ses_domain_mail_from ?behavior_on_mx_failure ?id ~domain
    ~mail_from_domain () : aws_ses_domain_mail_from =
  { behavior_on_mx_failure; domain; id; mail_from_domain }

type t = {
  behavior_on_mx_failure : string prop;
  domain : string prop;
  id : string prop;
  mail_from_domain : string prop;
}

let make ?behavior_on_mx_failure ?id ~domain ~mail_from_domain __id =
  let __type = "aws_ses_domain_mail_from" in
  let __attrs =
    ({
       behavior_on_mx_failure =
         Prop.computed __type __id "behavior_on_mx_failure";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       mail_from_domain =
         Prop.computed __type __id "mail_from_domain";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_domain_mail_from
        (aws_ses_domain_mail_from ?behavior_on_mx_failure ?id ~domain
           ~mail_from_domain ());
    attrs = __attrs;
  }

let register ?tf_module ?behavior_on_mx_failure ?id ~domain
    ~mail_from_domain __id =
  let (r : _ Tf_core.resource) =
    make ?behavior_on_mx_failure ?id ~domain ~mail_from_domain __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
