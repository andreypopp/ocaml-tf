(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_auth_server_scope = {
  auth_server_id : string prop;
  consent : string prop option; [@option]
  default : bool prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  metadata_publish : string prop option; [@option]
  name : string prop;
  optional : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server_scope) -> ()

let yojson_of_okta_auth_server_scope =
  (function
   | {
       auth_server_id = v_auth_server_id;
       consent = v_consent;
       default = v_default;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       metadata_publish = v_metadata_publish;
       name = v_name;
       optional = v_optional;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optional with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optional", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata_publish with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_publish", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
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
         match v_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consent", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auth_server_id
         in
         ("auth_server_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_auth_server_scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_auth_server_scope

[@@@deriving.end]

let okta_auth_server_scope ?consent ?default ?description
    ?display_name ?id ?metadata_publish ?optional ~auth_server_id
    ~name () : okta_auth_server_scope =
  {
    auth_server_id;
    consent;
    default;
    description;
    display_name;
    id;
    metadata_publish;
    name;
    optional;
  }

type t = {
  tf_name : string;
  auth_server_id : string prop;
  consent : string prop;
  default : bool prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  metadata_publish : string prop;
  name : string prop;
  optional : bool prop;
  system : bool prop;
}

let make ?consent ?default ?description ?display_name ?id
    ?metadata_publish ?optional ~auth_server_id ~name __id =
  let __type = "okta_auth_server_scope" in
  let __attrs =
    ({
       tf_name = __id;
       auth_server_id = Prop.computed __type __id "auth_server_id";
       consent = Prop.computed __type __id "consent";
       default = Prop.computed __type __id "default";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       metadata_publish =
         Prop.computed __type __id "metadata_publish";
       name = Prop.computed __type __id "name";
       optional = Prop.computed __type __id "optional";
       system = Prop.computed __type __id "system";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_auth_server_scope
        (okta_auth_server_scope ?consent ?default ?description
           ?display_name ?id ?metadata_publish ?optional
           ~auth_server_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?consent ?default ?description ?display_name
    ?id ?metadata_publish ?optional ~auth_server_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?consent ?default ?description ?display_name ?id
      ?metadata_publish ?optional ~auth_server_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
