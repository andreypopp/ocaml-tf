(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_prometheus_scraper__destination__amp
type aws_prometheus_scraper__destination
type aws_prometheus_scraper__source__eks
type aws_prometheus_scraper__source
type aws_prometheus_scraper__timeouts
type aws_prometheus_scraper

val aws_prometheus_scraper :
  ?alias:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:aws_prometheus_scraper__timeouts ->
  scrape_configuration:string prop ->
  destination:aws_prometheus_scraper__destination list ->
  source:aws_prometheus_scraper__source list ->
  string ->
  unit
