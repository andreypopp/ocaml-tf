(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ssoadmin_application__portal_options__sign_in_options = {
  application_url : string option; [@option]  (** application_url *)
  origin : string;  (** origin *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_application__portal_options__sign_in_options *)

type aws_ssoadmin_application__portal_options = {
  visibility : string option; [@option]  (** visibility *)
  sign_in_options :
    aws_ssoadmin_application__portal_options__sign_in_options list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_application__portal_options *)

type aws_ssoadmin_application = {
  application_provider_arn : string;  (** application_provider_arn *)
  client_token : string option; [@option]  (** client_token *)
  description : string option; [@option]  (** description *)
  instance_arn : string;  (** instance_arn *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  portal_options : aws_ssoadmin_application__portal_options list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_application *)

let aws_ssoadmin_application ?client_token ?description ?tags
    ~application_provider_arn ~instance_arn ~name ~portal_options
    __resource_id =
  let __resource_type = "aws_ssoadmin_application" in
  let __resource =
    {
      application_provider_arn;
      client_token;
      description;
      instance_arn;
      name;
      tags;
      portal_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_application __resource);
  ()
