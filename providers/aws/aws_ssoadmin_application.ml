(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?client_token ?description ?status ?tags
    ~application_provider_arn ~instance_arn ~name ~portal_options
    __id =
  let __type = "aws_ssoadmin_application" in
  let __attrs =
    ({
       application_account =
         Prop.computed __type __id "application_account";
       application_arn = Prop.computed __type __id "application_arn";
       application_provider_arn =
         Prop.computed __type __id "application_provider_arn";
       client_token = Prop.computed __type __id "client_token";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_application
        (aws_ssoadmin_application ?client_token ?description ?status
           ?tags ~application_provider_arn ~instance_arn ~name
           ~portal_options ());
    attrs = __attrs;
  }

let register ?tf_module ?client_token ?description ?status ?tags
    ~application_provider_arn ~instance_arn ~name ~portal_options
    __id =
  let (r : _ Tf_core.resource) =
    make ?client_token ?description ?status ?tags
      ~application_provider_arn ~instance_arn ~name ~portal_options
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
