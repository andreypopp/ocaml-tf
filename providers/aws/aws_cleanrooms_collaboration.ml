(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_encryption_metadata = {
  allow_clear_text : bool prop;
  allow_duplicates : bool prop;
  allow_joins_on_columns_with_different_names : bool prop;
  preserve_nulls : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_encryption_metadata) -> ()

let yojson_of_data_encryption_metadata =
  (function
   | {
       allow_clear_text = v_allow_clear_text;
       allow_duplicates = v_allow_duplicates;
       allow_joins_on_columns_with_different_names =
         v_allow_joins_on_columns_with_different_names;
       preserve_nulls = v_preserve_nulls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_preserve_nulls in
         ("preserve_nulls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_allow_joins_on_columns_with_different_names
         in
         ("allow_joins_on_columns_with_different_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_duplicates
         in
         ("allow_duplicates", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_clear_text
         in
         ("allow_clear_text", arg) :: bnds
       in
       `Assoc bnds
    : data_encryption_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_encryption_metadata

[@@@deriving.end]

type member = {
  account_id : string prop;
  display_name : string prop;
  member_abilities : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : member) -> ()

let yojson_of_member =
  (function
   | {
       account_id = v_account_id;
       display_name = v_display_name;
       member_abilities = v_member_abilities;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_member_abilities then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_member_abilities
           in
           let bnd = "member_abilities", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : member -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_member

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

type aws_cleanrooms_collaboration = {
  creator_display_name : string prop;
  creator_member_abilities : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop;
  name : string prop;
  query_log_status : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  data_encryption_metadata : data_encryption_metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  member : member list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cleanrooms_collaboration) -> ()

let yojson_of_aws_cleanrooms_collaboration =
  (function
   | {
       creator_display_name = v_creator_display_name;
       creator_member_abilities = v_creator_member_abilities;
       description = v_description;
       name = v_name;
       query_log_status = v_query_log_status;
       tags = v_tags;
       tags_all = v_tags_all;
       data_encryption_metadata = v_data_encryption_metadata;
       member = v_member;
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
         if Stdlib.( = ) [] v_member then bnds
         else
           let arg = (yojson_of_list yojson_of_member) v_member in
           let bnd = "member", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_encryption_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_encryption_metadata)
               v_data_encryption_metadata
           in
           let bnd = "data_encryption_metadata", arg in
           bnd :: bnds
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
           yojson_of_prop yojson_of_string v_query_log_status
         in
         ("query_log_status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_creator_member_abilities then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_creator_member_abilities
           in
           let bnd = "creator_member_abilities", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_creator_display_name
         in
         ("creator_display_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_cleanrooms_collaboration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cleanrooms_collaboration

[@@@deriving.end]

let data_encryption_metadata ~allow_clear_text ~allow_duplicates
    ~allow_joins_on_columns_with_different_names ~preserve_nulls () :
    data_encryption_metadata =
  {
    allow_clear_text;
    allow_duplicates;
    allow_joins_on_columns_with_different_names;
    preserve_nulls;
  }

let member ~account_id ~display_name ~member_abilities () : member =
  { account_id; display_name; member_abilities }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cleanrooms_collaboration ?tags ?tags_all
    ?(data_encryption_metadata = []) ?timeouts ~creator_display_name
    ~creator_member_abilities ~description ~name ~query_log_status
    ~member () : aws_cleanrooms_collaboration =
  {
    creator_display_name;
    creator_member_abilities;
    description;
    name;
    query_log_status;
    tags;
    tags_all;
    data_encryption_metadata;
    member;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  create_time : string prop;
  creator_display_name : string prop;
  creator_member_abilities : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  query_log_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let make ?tags ?tags_all ?(data_encryption_metadata = []) ?timeouts
    ~creator_display_name ~creator_member_abilities ~description
    ~name ~query_log_status ~member __id =
  let __type = "aws_cleanrooms_collaboration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       create_time = Prop.computed __type __id "create_time";
       creator_display_name =
         Prop.computed __type __id "creator_display_name";
       creator_member_abilities =
         Prop.computed __type __id "creator_member_abilities";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       query_log_status =
         Prop.computed __type __id "query_log_status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cleanrooms_collaboration
        (aws_cleanrooms_collaboration ?tags ?tags_all
           ~data_encryption_metadata ?timeouts ~creator_display_name
           ~creator_member_abilities ~description ~name
           ~query_log_status ~member ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?tags_all
    ?(data_encryption_metadata = []) ?timeouts ~creator_display_name
    ~creator_member_abilities ~description ~name ~query_log_status
    ~member __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?tags_all ~data_encryption_metadata ?timeouts
      ~creator_display_name ~creator_member_abilities ~description
      ~name ~query_log_status ~member __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
