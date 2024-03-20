(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codestarconnections_connection = {
  host_arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  provider_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codestarconnections_connection) -> ()

let yojson_of_aws_codestarconnections_connection =
  (function
   | {
       host_arn = v_host_arn;
       id = v_id;
       name = v_name;
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
         match v_provider_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_type", arg in
             bnd :: bnds
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
         match v_host_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codestarconnections_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codestarconnections_connection

[@@@deriving.end]

let aws_codestarconnections_connection ?host_arn ?id ?provider_type
    ?tags ?tags_all ~name () : aws_codestarconnections_connection =
  { host_arn; id; name; provider_type; tags; tags_all }

type t = {
  arn : string prop;
  connection_status : string prop;
  host_arn : string prop;
  id : string prop;
  name : string prop;
  provider_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?host_arn ?id ?provider_type ?tags ?tags_all ~name __id =
  let __type = "aws_codestarconnections_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       connection_status =
         Prop.computed __type __id "connection_status";
       host_arn = Prop.computed __type __id "host_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       provider_type = Prop.computed __type __id "provider_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codestarconnections_connection
        (aws_codestarconnections_connection ?host_arn ?id
           ?provider_type ?tags ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?host_arn ?id ?provider_type ?tags ?tags_all
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?host_arn ?id ?provider_type ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
