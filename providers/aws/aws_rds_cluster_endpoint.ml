(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rds_cluster_endpoint = {
  cluster_endpoint_identifier : string prop;
  cluster_identifier : string prop;
  custom_endpoint_type : string prop;
  excluded_members : string prop list option; [@option]
  id : string prop option; [@option]
  static_members : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_cluster_endpoint) -> ()

let yojson_of_aws_rds_cluster_endpoint =
  (function
   | {
       cluster_endpoint_identifier = v_cluster_endpoint_identifier;
       cluster_identifier = v_cluster_identifier;
       custom_endpoint_type = v_custom_endpoint_type;
       excluded_members = v_excluded_members;
       id = v_id;
       static_members = v_static_members;
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
         match v_static_members with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "static_members", arg in
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
         match v_excluded_members with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_members", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_endpoint_type
         in
         ("custom_endpoint_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cluster_endpoint_identifier
         in
         ("cluster_endpoint_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_rds_cluster_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_cluster_endpoint

[@@@deriving.end]

let aws_rds_cluster_endpoint ?excluded_members ?id ?static_members
    ?tags ?tags_all ~cluster_endpoint_identifier ~cluster_identifier
    ~custom_endpoint_type () : aws_rds_cluster_endpoint =
  {
    cluster_endpoint_identifier;
    cluster_identifier;
    custom_endpoint_type;
    excluded_members;
    id;
    static_members;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  cluster_endpoint_identifier : string prop;
  cluster_identifier : string prop;
  custom_endpoint_type : string prop;
  endpoint : string prop;
  excluded_members : string list prop;
  id : string prop;
  static_members : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?excluded_members ?id ?static_members ?tags ?tags_all
    ~cluster_endpoint_identifier ~cluster_identifier
    ~custom_endpoint_type __id =
  let __type = "aws_rds_cluster_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       cluster_endpoint_identifier =
         Prop.computed __type __id "cluster_endpoint_identifier";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       custom_endpoint_type =
         Prop.computed __type __id "custom_endpoint_type";
       endpoint = Prop.computed __type __id "endpoint";
       excluded_members =
         Prop.computed __type __id "excluded_members";
       id = Prop.computed __type __id "id";
       static_members = Prop.computed __type __id "static_members";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_cluster_endpoint
        (aws_rds_cluster_endpoint ?excluded_members ?id
           ?static_members ?tags ?tags_all
           ~cluster_endpoint_identifier ~cluster_identifier
           ~custom_endpoint_type ());
    attrs = __attrs;
  }

let register ?tf_module ?excluded_members ?id ?static_members ?tags
    ?tags_all ~cluster_endpoint_identifier ~cluster_identifier
    ~custom_endpoint_type __id =
  let (r : _ Tf_core.resource) =
    make ?excluded_members ?id ?static_members ?tags ?tags_all
      ~cluster_endpoint_identifier ~cluster_identifier
      ~custom_endpoint_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
