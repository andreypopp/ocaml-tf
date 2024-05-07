(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rds_reserved_instance_offering = {
  db_instance_class : string prop;
  duration : float prop;
  id : string prop option; [@option]
  multi_az : bool prop;
  offering_type : string prop;
  product_description : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_reserved_instance_offering) -> ()

let yojson_of_aws_rds_reserved_instance_offering =
  (function
   | {
       db_instance_class = v_db_instance_class;
       duration = v_duration;
       id = v_id;
       multi_az = v_multi_az;
       offering_type = v_offering_type;
       product_description = v_product_description;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_product_description
         in
         ("product_description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offering_type in
         ("offering_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_multi_az in
         ("multi_az", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_db_instance_class
         in
         ("db_instance_class", arg) :: bnds
       in
       `Assoc bnds
    : aws_rds_reserved_instance_offering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_reserved_instance_offering

[@@@deriving.end]

let aws_rds_reserved_instance_offering ?id ~db_instance_class
    ~duration ~multi_az ~offering_type ~product_description () :
    aws_rds_reserved_instance_offering =
  {
    db_instance_class;
    duration;
    id;
    multi_az;
    offering_type;
    product_description;
  }

type t = {
  tf_name : string;
  currency_code : string prop;
  db_instance_class : string prop;
  duration : float prop;
  fixed_price : float prop;
  id : string prop;
  multi_az : bool prop;
  offering_id : string prop;
  offering_type : string prop;
  product_description : string prop;
}

let make ?id ~db_instance_class ~duration ~multi_az ~offering_type
    ~product_description __id =
  let __type = "aws_rds_reserved_instance_offering" in
  let __attrs =
    ({
       tf_name = __id;
       currency_code = Prop.computed __type __id "currency_code";
       db_instance_class =
         Prop.computed __type __id "db_instance_class";
       duration = Prop.computed __type __id "duration";
       fixed_price = Prop.computed __type __id "fixed_price";
       id = Prop.computed __type __id "id";
       multi_az = Prop.computed __type __id "multi_az";
       offering_id = Prop.computed __type __id "offering_id";
       offering_type = Prop.computed __type __id "offering_type";
       product_description =
         Prop.computed __type __id "product_description";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_reserved_instance_offering
        (aws_rds_reserved_instance_offering ?id ~db_instance_class
           ~duration ~multi_az ~offering_type ~product_description ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~db_instance_class ~duration ~multi_az
    ~offering_type ~product_description __id =
  let (r : _ Tf_core.resource) =
    make ?id ~db_instance_class ~duration ~multi_az ~offering_type
      ~product_description __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
