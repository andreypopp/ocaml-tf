(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user_pool_ui_customization = {
  client_id : string prop option; [@option]  (** client_id *)
  css : string prop option; [@option]  (** css *)
  id : string prop option; [@option]  (** id *)
  image_file : string prop option; [@option]  (** image_file *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool_ui_customization *)

let aws_cognito_user_pool_ui_customization ?client_id ?css ?id
    ?image_file ~user_pool_id () :
    aws_cognito_user_pool_ui_customization =
  { client_id; css; id; image_file; user_pool_id }

type t = {
  client_id : string prop;
  creation_date : string prop;
  css : string prop;
  css_version : string prop;
  id : string prop;
  image_file : string prop;
  image_url : string prop;
  last_modified_date : string prop;
  user_pool_id : string prop;
}

let make ?client_id ?css ?id ?image_file ~user_pool_id __id =
  let __type = "aws_cognito_user_pool_ui_customization" in
  let __attrs =
    ({
       client_id = Prop.computed __type __id "client_id";
       creation_date = Prop.computed __type __id "creation_date";
       css = Prop.computed __type __id "css";
       css_version = Prop.computed __type __id "css_version";
       id = Prop.computed __type __id "id";
       image_file = Prop.computed __type __id "image_file";
       image_url = Prop.computed __type __id "image_url";
       last_modified_date =
         Prop.computed __type __id "last_modified_date";
       user_pool_id = Prop.computed __type __id "user_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_pool_ui_customization
        (aws_cognito_user_pool_ui_customization ?client_id ?css ?id
           ?image_file ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?client_id ?css ?id ?image_file ~user_pool_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?client_id ?css ?id ?image_file ~user_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
