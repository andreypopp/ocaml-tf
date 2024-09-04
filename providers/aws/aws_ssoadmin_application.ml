(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type portal_options__sign_in_options = {
  application_url : string prop option; [@option]
  origin : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : portal_options__sign_in_options) -> ()

let yojson_of_portal_options__sign_in_options =
  (function
   | { application_url = v_application_url; origin = v_origin } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_origin in
         ("origin", arg) :: bnds
       in
       let bnds =
         match v_application_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : portal_options__sign_in_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_portal_options__sign_in_options

[@@@deriving.end]

type portal_options = {
  visibility : string prop option; [@option]
  sign_in_options : portal_options__sign_in_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : portal_options) -> ()

let yojson_of_portal_options =
  (function
   | {
       visibility = v_visibility;
       sign_in_options = v_sign_in_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sign_in_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_portal_options__sign_in_options)
               v_sign_in_options
           in
           let bnd = "sign_in_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "visibility", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : portal_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_portal_options

[@@@deriving.end]

type aws_ssoadmin_application = {
  application_provider_arn : string prop;
  client_token : string prop option; [@option]
  description : string prop option; [@option]
  instance_arn : string prop;
  name : string prop;
  status : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  portal_options : portal_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_application) -> ()

let yojson_of_aws_ssoadmin_application =
  (function
   | {
       application_provider_arn = v_application_provider_arn;
       client_token = v_client_token;
       description = v_description;
       instance_arn = v_instance_arn;
       name = v_name;
       status = v_status;
       tags = v_tags;
       portal_options = v_portal_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_portal_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_portal_options)
               v_portal_options
           in
           let bnd = "portal_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_arn in
         ("instance_arn", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_token", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_provider_arn
         in
         ("application_provider_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssoadmin_application -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_application

[@@@deriving.end]

let portal_options__sign_in_options ?application_url ~origin () :
    portal_options__sign_in_options =
  { application_url; origin }

let portal_options ?visibility ?(sign_in_options = []) () :
    portal_options =
  { visibility; sign_in_options }

let aws_ssoadmin_application ?client_token ?description ?status ?tags
    ?(portal_options = []) ~application_provider_arn ~instance_arn
    ~name () : aws_ssoadmin_application =
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
  tf_name : string;
  application_account : string prop;
  application_arn : string prop;
  application_provider_arn : string prop;
  client_token : string prop;
  description : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?client_token ?description ?status ?tags
    ?(portal_options = []) ~application_provider_arn ~instance_arn
    ~name __id =
  let __type = "aws_ssoadmin_application" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?tags ~portal_options ~application_provider_arn
           ~instance_arn ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?client_token ?description ?status ?tags
    ?(portal_options = []) ~application_provider_arn ~instance_arn
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?client_token ?description ?status ?tags ~portal_options
      ~application_provider_arn ~instance_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
