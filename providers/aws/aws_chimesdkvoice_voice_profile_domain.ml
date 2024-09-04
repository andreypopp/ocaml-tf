(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type server_side_encryption_configuration = {
  kms_key_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_side_encryption_configuration) -> ()

let yojson_of_server_side_encryption_configuration =
  (function
   | { kms_key_arn = v_kms_key_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_arn in
         ("kms_key_arn", arg) :: bnds
       in
       `Assoc bnds
    : server_side_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_chimesdkvoice_voice_profile_domain = {
  description : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  server_side_encryption_configuration :
    server_side_encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chimesdkvoice_voice_profile_domain) -> ()

let yojson_of_aws_chimesdkvoice_voice_profile_domain =
  (function
   | {
       description = v_description;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       server_side_encryption_configuration =
         v_server_side_encryption_configuration;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_server_side_encryption_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_server_side_encryption_configuration)
               v_server_side_encryption_configuration
           in
           let bnd = "server_side_encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_chimesdkvoice_voice_profile_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chimesdkvoice_voice_profile_domain

[@@@deriving.end]

let server_side_encryption_configuration ~kms_key_arn () :
    server_side_encryption_configuration =
  { kms_key_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_chimesdkvoice_voice_profile_domain ?description ?tags
    ?tags_all ?timeouts ~name ~server_side_encryption_configuration
    () : aws_chimesdkvoice_voice_profile_domain =
  {
    description;
    name;
    tags;
    tags_all;
    server_side_encryption_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?tags ?tags_all ?timeouts ~name
    ~server_side_encryption_configuration __id =
  let __type = "aws_chimesdkvoice_voice_profile_domain" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chimesdkvoice_voice_profile_domain
        (aws_chimesdkvoice_voice_profile_domain ?description ?tags
           ?tags_all ?timeouts ~name
           ~server_side_encryption_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags ?tags_all ?timeouts ~name
    ~server_side_encryption_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ?tags_all ?timeouts ~name
      ~server_side_encryption_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
