(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_encryption_metadata = {
  allow_clear_text : bool prop;  (** allow_clear_text *)
  allow_duplicates : bool prop;  (** allow_duplicates *)
  allow_joins_on_columns_with_different_names : bool prop;
      (** allow_joins_on_columns_with_different_names *)
  preserve_nulls : bool prop;  (** preserve_nulls *)
}
[@@deriving yojson_of]
(** data_encryption_metadata *)

type member = {
  account_id : string prop;  (** account_id *)
  display_name : string prop;  (** display_name *)
  member_abilities : string prop list;  (** member_abilities *)
}
[@@deriving yojson_of]
(** member *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cleanrooms_collaboration = {
  creator_display_name : string prop;  (** creator_display_name *)
  creator_member_abilities : string prop list;
      (** creator_member_abilities *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  query_log_status : string prop;  (** query_log_status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  data_encryption_metadata : data_encryption_metadata list;
  member : member list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cleanrooms_collaboration *)

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

let aws_cleanrooms_collaboration ?tags ?tags_all ?timeouts
    ~creator_display_name ~creator_member_abilities ~description
    ~name ~query_log_status ~data_encryption_metadata ~member () :
    aws_cleanrooms_collaboration =
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

let make ?tags ?tags_all ?timeouts ~creator_display_name
    ~creator_member_abilities ~description ~name ~query_log_status
    ~data_encryption_metadata ~member __id =
  let __type = "aws_cleanrooms_collaboration" in
  let __attrs =
    ({
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
        (aws_cleanrooms_collaboration ?tags ?tags_all ?timeouts
           ~creator_display_name ~creator_member_abilities
           ~description ~name ~query_log_status
           ~data_encryption_metadata ~member ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?tags_all ?timeouts
    ~creator_display_name ~creator_member_abilities ~description
    ~name ~query_log_status ~data_encryption_metadata ~member __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?tags_all ?timeouts ~creator_display_name
      ~creator_member_abilities ~description ~name ~query_log_status
      ~data_encryption_metadata ~member __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
