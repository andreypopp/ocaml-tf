(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ebs_snapshot = {
  id : string prop option; [@option]
  most_recent : bool prop option; [@option]
  owners : string prop list option; [@option]
  restorable_by_user_ids : string prop list option; [@option]
  snapshot_ids : string prop list option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ebs_snapshot) -> ()

let yojson_of_aws_ebs_snapshot =
  (function
   | {
       id = v_id;
       most_recent = v_most_recent;
       owners = v_owners;
       restorable_by_user_ids = v_restorable_by_user_ids;
       snapshot_ids = v_snapshot_ids;
       tags = v_tags;
       filter = v_filter;
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
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
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
         match v_restorable_by_user_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "restorable_by_user_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owners with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "owners", arg in
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
    : aws_ebs_snapshot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ebs_snapshot

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ebs_snapshot ?id ?most_recent ?owners ?restorable_by_user_ids
    ?snapshot_ids ?tags ?timeouts ~filter () : aws_ebs_snapshot =
  {
    id;
    most_recent;
    owners;
    restorable_by_user_ids;
    snapshot_ids;
    tags;
    filter;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  data_encryption_key_id : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  most_recent : bool prop;
  outpost_arn : string prop;
  owner_alias : string prop;
  owner_id : string prop;
  owners : string list prop;
  restorable_by_user_ids : string list prop;
  snapshot_id : string prop;
  snapshot_ids : string list prop;
  state : string prop;
  storage_tier : string prop;
  tags : string Tf_core.assoc prop;
  volume_id : string prop;
  volume_size : float prop;
}

let make ?id ?most_recent ?owners ?restorable_by_user_ids
    ?snapshot_ids ?tags ?timeouts ~filter __id =
  let __type = "aws_ebs_snapshot" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       data_encryption_key_id =
         Prop.computed __type __id "data_encryption_key_id";
       description = Prop.computed __type __id "description";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       most_recent = Prop.computed __type __id "most_recent";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       owner_alias = Prop.computed __type __id "owner_alias";
       owner_id = Prop.computed __type __id "owner_id";
       owners = Prop.computed __type __id "owners";
       restorable_by_user_ids =
         Prop.computed __type __id "restorable_by_user_ids";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       snapshot_ids = Prop.computed __type __id "snapshot_ids";
       state = Prop.computed __type __id "state";
       storage_tier = Prop.computed __type __id "storage_tier";
       tags = Prop.computed __type __id "tags";
       volume_id = Prop.computed __type __id "volume_id";
       volume_size = Prop.computed __type __id "volume_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_snapshot
        (aws_ebs_snapshot ?id ?most_recent ?owners
           ?restorable_by_user_ids ?snapshot_ids ?tags ?timeouts
           ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?most_recent ?owners
    ?restorable_by_user_ids ?snapshot_ids ?tags ?timeouts ~filter
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?most_recent ?owners ?restorable_by_user_ids
      ?snapshot_ids ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
