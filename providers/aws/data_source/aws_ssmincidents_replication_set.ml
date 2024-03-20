(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type region = {
  kms_key_arn : string prop;
  name : string prop;
  status : string prop;
  status_message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : region) -> ()

let yojson_of_region =
  (function
   | {
       kms_key_arn = v_kms_key_arn;
       name = v_name;
       status = v_status;
       status_message = v_status_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_status_message
         in
         ("status_message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_arn in
         ("kms_key_arn", arg) :: bnds
       in
       `Assoc bnds
    : region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_region

[@@@deriving.end]

type aws_ssmincidents_replication_set = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssmincidents_replication_set) -> ()

let yojson_of_aws_ssmincidents_replication_set =
  (function
   | { id = v_id; tags = v_tags } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssmincidents_replication_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssmincidents_replication_set

[@@@deriving.end]

let aws_ssmincidents_replication_set ?id ?tags () :
    aws_ssmincidents_replication_set =
  { id; tags }

type t = {
  arn : string prop;
  created_by : string prop;
  deletion_protected : bool prop;
  id : string prop;
  last_modified_by : string prop;
  region : region list prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags __id =
  let __type = "aws_ssmincidents_replication_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_by = Prop.computed __type __id "created_by";
       deletion_protected =
         Prop.computed __type __id "deletion_protected";
       id = Prop.computed __type __id "id";
       last_modified_by =
         Prop.computed __type __id "last_modified_by";
       region = Prop.computed __type __id "region";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssmincidents_replication_set
        (aws_ssmincidents_replication_set ?id ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags __id =
  let (r : _ Tf_core.resource) = make ?id ?tags __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
