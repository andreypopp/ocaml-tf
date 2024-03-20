(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_kafka_version = {
  id : string prop option; [@option]
  preferred_versions : string prop list option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_kafka_version) -> ()

let yojson_of_aws_msk_kafka_version =
  (function
   | {
       id = v_id;
       preferred_versions = v_preferred_versions;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_versions", arg in
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
       `Assoc bnds
    : aws_msk_kafka_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_kafka_version

[@@@deriving.end]

let aws_msk_kafka_version ?id ?preferred_versions ?version () :
    aws_msk_kafka_version =
  { id; preferred_versions; version }

type t = {
  id : string prop;
  preferred_versions : string list prop;
  status : string prop;
  version : string prop;
}

let make ?id ?preferred_versions ?version __id =
  let __type = "aws_msk_kafka_version" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       preferred_versions =
         Prop.computed __type __id "preferred_versions";
       status = Prop.computed __type __id "status";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_kafka_version
        (aws_msk_kafka_version ?id ?preferred_versions ?version ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?preferred_versions ?version __id =
  let (r : _ Tf_core.resource) =
    make ?id ?preferred_versions ?version __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
