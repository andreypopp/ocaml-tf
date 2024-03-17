(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticsearch_domain_saml_options__saml_options__idp = {
  entity_id : string prop;  (** entity_id *)
  metadata_content : string prop;  (** metadata_content *)
}
[@@deriving yojson_of]
(** aws_elasticsearch_domain_saml_options__saml_options__idp *)

type aws_elasticsearch_domain_saml_options__saml_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  master_backend_role : string prop option; [@option]
      (** master_backend_role *)
  master_user_name : string prop option; [@option]
      (** master_user_name *)
  roles_key : string prop option; [@option]  (** roles_key *)
  session_timeout_minutes : float prop option; [@option]
      (** session_timeout_minutes *)
  subject_key : string prop option; [@option]  (** subject_key *)
  idp : aws_elasticsearch_domain_saml_options__saml_options__idp list;
}
[@@deriving yojson_of]
(** aws_elasticsearch_domain_saml_options__saml_options *)

type aws_elasticsearch_domain_saml_options__timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_elasticsearch_domain_saml_options__timeouts *)

type aws_elasticsearch_domain_saml_options = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  saml_options :
    aws_elasticsearch_domain_saml_options__saml_options list;
  timeouts : aws_elasticsearch_domain_saml_options__timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticsearch_domain_saml_options *)

type t = { domain_name : string prop; id : string prop }

let aws_elasticsearch_domain_saml_options ?id ?timeouts ~domain_name
    ~saml_options __resource_id =
  let __resource_type = "aws_elasticsearch_domain_saml_options" in
  let __resource =
    ({ domain_name; id; saml_options; timeouts }
      : aws_elasticsearch_domain_saml_options)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticsearch_domain_saml_options __resource);
  let __resource_attributes =
    ({
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
