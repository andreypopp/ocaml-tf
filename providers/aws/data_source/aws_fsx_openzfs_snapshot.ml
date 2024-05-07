(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_fsx_openzfs_snapshot = {
  id : string prop option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  snapshot_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_openzfs_snapshot) -> ()

let yojson_of_aws_fsx_openzfs_snapshot =
  (function
   | {
       id = v_id;
       most_recent = v_most_recent;
       name = v_name;
       snapshot_ids = v_snapshot_ids;
       tags = v_tags;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
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
         match v_snapshot_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "snapshot_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
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
    : aws_fsx_openzfs_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_openzfs_snapshot

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_fsx_openzfs_snapshot ?id ?most_recent ?name ?snapshot_ids
    ?tags ~filter () : aws_fsx_openzfs_snapshot =
  { id; most_recent; name; snapshot_ids; tags; filter }

type t = {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  id : string prop;
  most_recent : bool prop;
  name : string prop;
  snapshot_id : string prop;
  snapshot_ids : string list prop;
  tags : (string * string) list prop;
  volume_id : string prop;
}

let make ?id ?most_recent ?name ?snapshot_ids ?tags ~filter __id =
  let __type = "aws_fsx_openzfs_snapshot" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       id = Prop.computed __type __id "id";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       snapshot_ids = Prop.computed __type __id "snapshot_ids";
       tags = Prop.computed __type __id "tags";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_openzfs_snapshot
        (aws_fsx_openzfs_snapshot ?id ?most_recent ?name
           ?snapshot_ids ?tags ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?most_recent ?name ?snapshot_ids ?tags
    ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?most_recent ?name ?snapshot_ids ?tags ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
