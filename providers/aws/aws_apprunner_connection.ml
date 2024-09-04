(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apprunner_connection = {
  connection_name : string prop;
  id : string prop option; [@option]
  provider_type : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apprunner_connection) -> ()

let yojson_of_aws_apprunner_connection =
  (function
   | {
       connection_name = v_connection_name;
       id = v_id;
       provider_type = v_provider_type;
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
         let arg = yojson_of_prop yojson_of_string v_provider_type in
         ("provider_type", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_connection_name
         in
         ("connection_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_apprunner_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apprunner_connection

[@@@deriving.end]

let aws_apprunner_connection ?id ?tags ?tags_all ~connection_name
    ~provider_type () : aws_apprunner_connection =
  { connection_name; id; provider_type; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  connection_name : string prop;
  id : string prop;
  provider_type : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?tags ?tags_all ~connection_name ~provider_type __id =
  let __type = "aws_apprunner_connection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       connection_name = Prop.computed __type __id "connection_name";
       id = Prop.computed __type __id "id";
       provider_type = Prop.computed __type __id "provider_type";
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
      yojson_of_aws_apprunner_connection
        (aws_apprunner_connection ?id ?tags ?tags_all
           ~connection_name ~provider_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~connection_name
    ~provider_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~connection_name ~provider_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
