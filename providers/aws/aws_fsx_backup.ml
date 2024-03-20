(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fsx_backup = {
  file_system_id : string prop option; [@option]
      (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  volume_id : string prop option; [@option]  (** volume_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_backup *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_fsx_backup ?file_system_id ?id ?tags ?tags_all ?volume_id
    ?timeouts () : aws_fsx_backup =
  { file_system_id; id; tags; tags_all; volume_id; timeouts }

type t = {
  arn : string prop;
  file_system_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  volume_id : string prop;
}

let make ?file_system_id ?id ?tags ?tags_all ?volume_id ?timeouts
    __id =
  let __type = "aws_fsx_backup" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_backup
        (aws_fsx_backup ?file_system_id ?id ?tags ?tags_all
           ?volume_id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?file_system_id ?id ?tags ?tags_all
    ?volume_id ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?file_system_id ?id ?tags ?tags_all ?volume_id ?timeouts
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
