(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type saml_options = {
  group_attribute : string prop option; [@option]
      (** group_attribute *)
  metadata : string prop;  (** metadata *)
  session_timeout : float prop option; [@option]
      (** session_timeout *)
  user_attribute : string prop option; [@option]
      (** user_attribute *)
}
[@@deriving yojson_of]
(** saml_options *)

type aws_opensearchserverless_security_config = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  saml_options : saml_options;
}
[@@deriving yojson_of]
(** aws_opensearchserverless_security_config *)

let saml_options ?group_attribute ?session_timeout ?user_attribute
    ~metadata () : saml_options =
  { group_attribute; metadata; session_timeout; user_attribute }

let aws_opensearchserverless_security_config ?description ~name
    ~type_ ~saml_options () :
    aws_opensearchserverless_security_config =
  { description; name; type_; saml_options }

type t = {
  config_version : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let register ?tf_module ?description ~name ~type_ ~saml_options
    __resource_id =
  let __resource_type = "aws_opensearchserverless_security_config" in
  let __resource =
    aws_opensearchserverless_security_config ?description ~name
      ~type_ ~saml_options ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearchserverless_security_config __resource);
  let __resource_attributes =
    ({
       config_version =
         Prop.computed __resource_type __resource_id "config_version";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
