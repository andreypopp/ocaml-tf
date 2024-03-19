(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type portal_options__sign_in_options = {
  application_url : string prop option; [@option]
      (** application_url *)
  origin : string prop;  (** origin *)
}
[@@deriving yojson_of]
(** portal_options__sign_in_options *)

type portal_options = {
  visibility : string prop option; [@option]  (** visibility *)
  sign_in_options : portal_options__sign_in_options list;
}
[@@deriving yojson_of]
(** portal_options *)

type aws_ssoadmin_application = {
  application_provider_arn : string prop;
      (** application_provider_arn *)
  client_token : string prop option; [@option]  (** client_token *)
  description : string prop option; [@option]  (** description *)
  instance_arn : string prop;  (** instance_arn *)
  name : string prop;  (** name *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  portal_options : portal_options list;
}
[@@deriving yojson_of]
(** aws_ssoadmin_application *)

let portal_options__sign_in_options ?application_url ~origin () :
    portal_options__sign_in_options =
  { application_url; origin }

let portal_options ?visibility ~sign_in_options () : portal_options =
  { visibility; sign_in_options }

let aws_ssoadmin_application ?client_token ?description ?status ?tags
    ~application_provider_arn ~instance_arn ~name ~portal_options ()
    : aws_ssoadmin_application =
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

type t = {
  application_account : string prop;
  application_arn : string prop;
  application_provider_arn : string prop;
  client_token : string prop;
  description : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?client_token ?description ?status ?tags
    ~application_provider_arn ~instance_arn ~name ~portal_options
    __resource_id =
  let __resource_type = "aws_ssoadmin_application" in
  let __resource =
    aws_ssoadmin_application ?client_token ?description ?status ?tags
      ~application_provider_arn ~instance_arn ~name ~portal_options
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssoadmin_application __resource);
  let __resource_attributes =
    ({
       application_account =
         Prop.computed __resource_type __resource_id
           "application_account";
       application_arn =
         Prop.computed __resource_type __resource_id
           "application_arn";
       application_provider_arn =
         Prop.computed __resource_type __resource_id
           "application_provider_arn";
       client_token =
         Prop.computed __resource_type __resource_id "client_token";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       instance_arn =
         Prop.computed __resource_type __resource_id "instance_arn";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
