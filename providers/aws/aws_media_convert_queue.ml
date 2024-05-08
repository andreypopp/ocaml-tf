(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type reservation_plan_settings = {
  commitment : string prop;
  renewal_type : string prop;
  reserved_slots : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reservation_plan_settings) -> ()

let yojson_of_reservation_plan_settings =
  (function
   | {
       commitment = v_commitment;
       renewal_type = v_renewal_type;
       reserved_slots = v_reserved_slots;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_reserved_slots in
         ("reserved_slots", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_renewal_type in
         ("renewal_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_commitment in
         ("commitment", arg) :: bnds
       in
       `Assoc bnds
    : reservation_plan_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reservation_plan_settings

[@@@deriving.end]

type aws_media_convert_queue = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  pricing_plan : string prop option; [@option]
  status : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  reservation_plan_settings : reservation_plan_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_media_convert_queue) -> ()

let yojson_of_aws_media_convert_queue =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       pricing_plan = v_pricing_plan;
       status = v_status;
       tags = v_tags;
       tags_all = v_tags_all;
       reservation_plan_settings = v_reservation_plan_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_reservation_plan_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_reservation_plan_settings)
               v_reservation_plan_settings
           in
           let bnd = "reservation_plan_settings", arg in
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
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pricing_plan with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pricing_plan", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_media_convert_queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_media_convert_queue

[@@@deriving.end]

let reservation_plan_settings ~commitment ~renewal_type
    ~reserved_slots () : reservation_plan_settings =
  { commitment; renewal_type; reserved_slots }

let aws_media_convert_queue ?description ?id ?pricing_plan ?status
    ?tags ?tags_all ?(reservation_plan_settings = []) ~name () :
    aws_media_convert_queue =
  {
    description;
    id;
    name;
    pricing_plan;
    status;
    tags;
    tags_all;
    reservation_plan_settings;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  pricing_plan : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?pricing_plan ?status ?tags ?tags_all
    ?(reservation_plan_settings = []) ~name __id =
  let __type = "aws_media_convert_queue" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       pricing_plan = Prop.computed __type __id "pricing_plan";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_media_convert_queue
        (aws_media_convert_queue ?description ?id ?pricing_plan
           ?status ?tags ?tags_all ~reservation_plan_settings ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?pricing_plan ?status ?tags
    ?tags_all ?(reservation_plan_settings = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?pricing_plan ?status ?tags ?tags_all
      ~reservation_plan_settings ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
