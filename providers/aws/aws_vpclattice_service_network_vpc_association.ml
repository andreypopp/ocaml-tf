(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_vpclattice_service_network_vpc_association = {
  id : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  service_network_identifier : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_identifier : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_vpclattice_service_network_vpc_association) -> ()

let yojson_of_aws_vpclattice_service_network_vpc_association =
  (function
   | {
       id = v_id;
       security_group_ids = v_security_group_ids;
       service_network_identifier = v_service_network_identifier;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_identifier = v_vpc_identifier;
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
         let arg =
           yojson_of_prop yojson_of_string v_vpc_identifier
         in
         ("vpc_identifier", arg) :: bnds
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
           yojson_of_prop yojson_of_string
             v_service_network_identifier
         in
         ("service_network_identifier", arg) :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
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
    : aws_vpclattice_service_network_vpc_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpclattice_service_network_vpc_association

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_service_network_vpc_association ?id
    ?security_group_ids ?tags ?tags_all ?timeouts
    ~service_network_identifier ~vpc_identifier () :
    aws_vpclattice_service_network_vpc_association =
  {
    id;
    security_group_ids;
    service_network_identifier;
    tags;
    tags_all;
    vpc_identifier;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  created_by : string prop;
  id : string prop;
  security_group_ids : string list prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_identifier : string prop;
}

let make ?id ?security_group_ids ?tags ?tags_all ?timeouts
    ~service_network_identifier ~vpc_identifier __id =
  let __type = "aws_vpclattice_service_network_vpc_association" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_by = Prop.computed __type __id "created_by";
       id = Prop.computed __type __id "id";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       service_network_identifier =
         Prop.computed __type __id "service_network_identifier";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_identifier = Prop.computed __type __id "vpc_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_service_network_vpc_association
        (aws_vpclattice_service_network_vpc_association ?id
           ?security_group_ids ?tags ?tags_all ?timeouts
           ~service_network_identifier ~vpc_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?security_group_ids ?tags ?tags_all
    ?timeouts ~service_network_identifier ~vpc_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?security_group_ids ?tags ?tags_all ?timeouts
      ~service_network_identifier ~vpc_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
