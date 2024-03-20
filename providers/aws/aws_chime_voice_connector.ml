(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_chime_voice_connector = {
  aws_region : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  require_encryption : bool prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chime_voice_connector) -> ()

let yojson_of_aws_chime_voice_connector =
  (function
   | {
       aws_region = v_aws_region;
       id = v_id;
       name = v_name;
       require_encryption = v_require_encryption;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_require_encryption
         in
         ("require_encryption", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_aws_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_region", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_chime_voice_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chime_voice_connector

[@@@deriving.end]

let aws_chime_voice_connector ?aws_region ?id ?tags ?tags_all ~name
    ~require_encryption () : aws_chime_voice_connector =
  { aws_region; id; name; require_encryption; tags; tags_all }

type t = {
  arn : string prop;
  aws_region : string prop;
  id : string prop;
  name : string prop;
  outbound_host_name : string prop;
  require_encryption : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?aws_region ?id ?tags ?tags_all ~name ~require_encryption
    __id =
  let __type = "aws_chime_voice_connector" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       aws_region = Prop.computed __type __id "aws_region";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       outbound_host_name =
         Prop.computed __type __id "outbound_host_name";
       require_encryption =
         Prop.computed __type __id "require_encryption";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector
        (aws_chime_voice_connector ?aws_region ?id ?tags ?tags_all
           ~name ~require_encryption ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_region ?id ?tags ?tags_all ~name
    ~require_encryption __id =
  let (r : _ Tf_core.resource) =
    make ?aws_region ?id ?tags ?tags_all ~name ~require_encryption
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
