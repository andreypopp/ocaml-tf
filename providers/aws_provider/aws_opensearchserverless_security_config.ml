(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearchserverless_security_config__saml_options = {
  group_attribute : string option; [@option]  (** group_attribute *)
  metadata : string;  (** metadata *)
  session_timeout : float option; [@option]  (** session_timeout *)
  user_attribute : string option; [@option]  (** user_attribute *)
}
[@@deriving yojson_of]
(** aws_opensearchserverless_security_config__saml_options *)

type aws_opensearchserverless_security_config = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
  saml_options :
    aws_opensearchserverless_security_config__saml_options;
}
[@@deriving yojson_of]
(** aws_opensearchserverless_security_config *)

let aws_opensearchserverless_security_config ?description ~name
    ~type_ ~saml_options __resource_id =
  let __resource_type = "aws_opensearchserverless_security_config" in
  let __resource = { description; name; type_; saml_options } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearchserverless_security_config __resource);
  ()
