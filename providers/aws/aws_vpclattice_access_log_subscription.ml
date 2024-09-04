(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpclattice_access_log_subscription = {
  destination_arn : string prop;
  id : string prop option; [@option]
  resource_identifier : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpclattice_access_log_subscription) -> ()

let yojson_of_aws_vpclattice_access_log_subscription =
  (function
   | {
       destination_arn = v_destination_arn;
       id = v_id;
       resource_identifier = v_resource_identifier;
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
           yojson_of_prop yojson_of_string v_resource_identifier
         in
         ("resource_identifier", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_destination_arn
         in
         ("destination_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpclattice_access_log_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpclattice_access_log_subscription

[@@@deriving.end]

let aws_vpclattice_access_log_subscription ?id ?tags ?tags_all
    ~destination_arn ~resource_identifier () :
    aws_vpclattice_access_log_subscription =
  { destination_arn; id; resource_identifier; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  destination_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_identifier : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?tags ?tags_all ~destination_arn ~resource_identifier
    __id =
  let __type = "aws_vpclattice_access_log_subscription" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       destination_arn = Prop.computed __type __id "destination_arn";
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       resource_identifier =
         Prop.computed __type __id "resource_identifier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_access_log_subscription
        (aws_vpclattice_access_log_subscription ?id ?tags ?tags_all
           ~destination_arn ~resource_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~destination_arn
    ~resource_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~destination_arn ~resource_identifier
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
