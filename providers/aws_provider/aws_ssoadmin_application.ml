(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssoadmin_application__portal_options__sign_in_options = {
  application_url : string prop option; [@option]
      (** application_url *)
  origin : string prop;  (** origin *)
}
[@@deriving yojson_of]
(** aws_ssoadmin_application__portal_options__sign_in_options *)

type aws_ssoadmin_application__portal_options = {
  visibility : string prop option; [@option]  (** visibility *)
  sign_in_options :
    aws_ssoadmin_application__portal_options__sign_in_options list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_application__portal_options *)

type aws_ssoadmin_application = {
  application_provider_arn : string prop;
      (** application_provider_arn *)
  client_token : string prop option; [@option]  (** client_token *)
  description : string prop option; [@option]  (** description *)
  instance_arn : string prop;  (** instance_arn *)
  name : string prop;  (** name *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  portal_options : aws_ssoadmin_application__portal_options list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_application *)

let aws_ssoadmin_application ?client_token ?description ?status ?tags
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
      status;
      tags;
      portal_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_application __resource);
  ()
