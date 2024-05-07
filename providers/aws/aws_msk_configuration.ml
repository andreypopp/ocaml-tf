(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_configuration = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  kafka_versions : string prop list option; [@option]
  name : string prop;
  server_properties : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_configuration) -> ()

let yojson_of_aws_msk_configuration =
  (function
   | {
       description = v_description;
       id = v_id;
       kafka_versions = v_kafka_versions;
       name = v_name;
       server_properties = v_server_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_server_properties
         in
         ("server_properties", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kafka_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "kafka_versions", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_msk_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_configuration

[@@@deriving.end]

let aws_msk_configuration ?description ?id ?kafka_versions ~name
    ~server_properties () : aws_msk_configuration =
  { description; id; kafka_versions; name; server_properties }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  kafka_versions : string list prop;
  latest_revision : float prop;
  name : string prop;
  server_properties : string prop;
}

let make ?description ?id ?kafka_versions ~name ~server_properties
    __id =
  let __type = "aws_msk_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kafka_versions = Prop.computed __type __id "kafka_versions";
       latest_revision = Prop.computed __type __id "latest_revision";
       name = Prop.computed __type __id "name";
       server_properties =
         Prop.computed __type __id "server_properties";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_configuration
        (aws_msk_configuration ?description ?id ?kafka_versions ~name
           ~server_properties ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kafka_versions ~name
    ~server_properties __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kafka_versions ~name ~server_properties
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
