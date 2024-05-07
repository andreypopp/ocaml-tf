(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_qldb_ledger = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_qldb_ledger) -> ()

let yojson_of_aws_qldb_ledger =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : aws_qldb_ledger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_qldb_ledger

[@@@deriving.end]

let aws_qldb_ledger ?id ?tags ~name () : aws_qldb_ledger =
  { id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  deletion_protection : bool prop;
  id : string prop;
  kms_key : string prop;
  name : string prop;
  permissions_mode : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~name __id =
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_qldb_ledger (aws_qldb_ledger ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
