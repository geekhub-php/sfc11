<?php

namespace Kinosklad\Bundle\MainBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * GenreRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class GenreRepository extends EntityRepository
{
    public function findAll()
    {
        return $this->createQueryBuilder('g')
            ->select('g, t, f')
            ->leftJoin('g.translations', 't')
            ->leftJoin('g.films', 'f')
            ->getQuery()
            ->execute();
    }
}
