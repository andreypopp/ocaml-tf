(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_qldb_ledger = {
  deletion_protection : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key : string prop option; [@option]
  name : string prop option; [@option]
  permissions_mode : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_qldb_ledger) -> ()

let yojson_of_aws_qldb_ledger =
  (function
   | {
       deletion_protection = v_deletion_protection;
       id = v_id;
       kms_key = v_kms_key;
       name = v_name;
       permissions_mode = v_permissions_mode;
       tags = v_tags;
       tags_all = v_tags_all;
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
         let arg =
           yojson_of_prop yojson_of_string v_permissions_mode
         in
         ("permissions_mode", arg) :: bnds
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
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
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
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_qldb_ledger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_qldb_ledger

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_qldb_ledger ?deletion_protection ?id ?kms_key ?name ?tags
    ?tags_all ?timeouts ~permissions_mode () : aws_qldb_ledger =
  {
    deletion_protection;
    id;
    kms_key;
    name;
    permissions_mode;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  deletion_protection : bool prop;
  id : string prop;
  kms_key : string prop;
  name : string prop;
  permissions_mode : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?deletion_protection ?id ?kms_key ?name ?tags ?tags_all
    ?timeouts ~permissions_mode __id =
  let __type = "aws_qldb_ledger" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       id = Prop.computed __type __id "id";
       kms_key = Prop.computed __type __id "kms_key";
       name = Prop.computed __type __id "name";
       permissions_mode =
         Prop.computed __type __id "permissions_mode";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_qldb_ledger
        (aws_qldb_ledger ?deletion_protection ?id ?kms_key ?name
           ?tags ?tags_all ?timeouts ~permissions_mode ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_protection ?id ?kms_key ?name ?tags
    ?tags_all ?timeouts ~permissions_mode __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_protection ?id ?kms_key ?name ?tags ?tags_all
      ?timeouts ~permissions_mode __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
